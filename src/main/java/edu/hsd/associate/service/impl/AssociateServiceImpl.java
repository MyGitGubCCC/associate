package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Area;
import edu.hsd.associate.dataobject.Associate;
import edu.hsd.associate.dto.AssociateDTO;
import edu.hsd.associate.enums.AssociateEnum;
import edu.hsd.associate.exception.AssociateException;
import edu.hsd.associate.repository.AreaRepository;
import edu.hsd.associate.repository.AssociateRepository;
import edu.hsd.associate.service.AssociateService;
import edu.hsd.associate.vo.AssociateFieldResultVo;
import edu.hsd.associate.vo.AssociateFieldVo;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 8:51
 */
@Service
public class AssociateServiceImpl implements AssociateService {

    @Autowired
    private AssociateRepository associateRepository;
    @Autowired
    private AreaRepository areaRepository;

    @Override
    public Page<AssociateWordVo> findAllAssociateWord(Pageable pageable, String associateWord, String associatePos) {
        Page<Object[]> PageAssociateWordList = associateRepository.findAllAssociateWord(associateWord,associatePos, pageable);

        List<Object[]> associateWordList = PageAssociateWordList.getContent();
        List<AssociateWordVo> associateWordVoList = new ArrayList<>();

        for (Object[] objects : associateWordList) {
            AssociateWordVo associateWordVo = new AssociateWordVo();
            associateWordVo.setAssociateWord((String) objects[0]);
            associateWordVo.setAssociatePosName((String)objects[1]);
            associateWordVoList.add(associateWordVo);
        }

        Page<AssociateWordVo> associateWordVoPage = new PageImpl<>(associateWordVoList,pageable,PageAssociateWordList.getTotalElements());
        return associateWordVoPage;
    }

    @Override
    public Page<AssociateFieldVo> findAssociateField(Pageable pageable, AssociateDTO associateDTO) {
        //生源地和现居地地址处理，默认全有
        List<Integer> orIds = new ArrayList<>();
        List<Integer> preIds = new ArrayList<>();
        List<Integer> areaIdForOrLocation = new ArrayList<>();
        List<Integer> areaIdForPreLocation = new ArrayList<>();
        List<Area> areas = areaRepository.findAll();
        for (Area area : areas) {
            orIds.add(area.getAreaId());
            preIds.add(area.getAreaId());
            areaIdForOrLocation.add(area.getAreaId());
            areaIdForPreLocation.add(area.getAreaId());
        }
        orIds = getAreaIds(orIds, areaIdForOrLocation, associateDTO.getOriginAreaId(), associateDTO.getOriginLocationId());

        preIds = getAreaIds(preIds, areaIdForPreLocation, associateDTO.getPresentAreaId(), associateDTO.getPresentLocationId());

        Page<Object[]> pageObject = associateRepository.findAssociateField(associateDTO, orIds, preIds, pageable);
        //转换为AssociateFieldVo类型的page对象
        List<Object[]> objectList = pageObject.getContent();
        List<AssociateFieldVo> associateFieldVoList = convertAssociateFieldVos(objectList);
        Page<AssociateFieldVo> associateFieldVoPage = new PageImpl<>(associateFieldVoList, pageable, pageObject.getTotalElements());
        return associateFieldVoPage;
    }

    /**
     * 获取地址的主键列表
     * @param ids
     * @param areaIdForLocation
     * @param areaId
     * @param locationId
     * @return
     */
    private List<Integer> getAreaIds(List<Integer> ids, List<Integer> areaIdForLocation, Integer areaId, Integer locationId) {
        //如果生源地不为空，删选出生源地的地址id
        if (areaId != 0) {
            ids = new ArrayList<>();
            ids = getAreaIds(ids, areaId);
        }
        //如果生源地区不为空，再筛选生源地址
        if (locationId != 0) {
            List<Area> areas1 = areaRepository.findByLocationId(locationId);
            areaIdForLocation = new ArrayList<>();
            for (Area area : areas1) {
                areaIdForLocation.add(area.getAreaId());
            }
        }
        //求交集
        ids.retainAll(areaIdForLocation);
        return ids;
    }

    @Override
    public AssociateFieldResultVo findAssociateField(AssociateDTO associateDTO) {
        //生源地和现居地地址处理，默认全有
        List<Integer> orIds = new ArrayList<>();
        List<Integer> preIds = new ArrayList<>();
        List<Integer> areaIdForOrLocation = new ArrayList<>();
        List<Integer> areaIdForPreLocation = new ArrayList<>();
        List<Area> areas = areaRepository.findAll();
        for (Area area : areas) {
            orIds.add(area.getAreaId());
            preIds.add(area.getAreaId());
            areaIdForOrLocation.add(area.getAreaId());
            areaIdForPreLocation.add(area.getAreaId());
        }
        orIds = getAreaIds(orIds, areaIdForOrLocation, associateDTO.getOriginAreaId(), associateDTO.getOriginLocationId());

        preIds = getAreaIds(preIds, areaIdForPreLocation, associateDTO.getPresentAreaId(), associateDTO.getPresentLocationId());

        //1: 包含空字符串（全部），0: 不包含
        int containEmpty = 0;
        List<Object[]> objectList = associateRepository.findAssociateField(associateDTO, orIds, preIds, containEmpty);
        List<AssociateFieldVo> associateFieldVos = convertAssociateFieldVos(objectList);

        containEmpty = 1;
        List<Object[]> objectList2 = associateRepository.findAssociateField(associateDTO, orIds, preIds, containEmpty);
        List<AssociateFieldVo> associateFieldVos2 = convertAssociateFieldVos(objectList2);

        //反应词总数
        long reactionNumber = 0;
        for (AssociateFieldVo associateFieldVo : associateFieldVos2) {
            reactionNumber += associateFieldVo.getReactionWordNumber().intValue();
        }

        //不同反应词个数
        long differentReactionNumber = associateFieldVos2.size();
        //反应词为空的个数
        long emptyReactionNumber = 0;
        for (AssociateFieldVo associateFieldVo : associateFieldVos2) {
            if (associateFieldVo.getReactionWord() == null || associateFieldVo.getReactionWord().equals("")){
                emptyReactionNumber += associateFieldVo.getReactionWordNumber().intValue();
            }
        }
        long oneReactionNumber = 0;
        for (AssociateFieldVo associateFieldVo : associateFieldVos) {
            if (1 == associateFieldVo.getReactionWordNumber().intValue()){
                oneReactionNumber ++;
            }
        }

        //在封装成联想场结果对象
        AssociateFieldResultVo associateFieldResultVo = new AssociateFieldResultVo();
        associateFieldResultVo.setAssociateFieldVoList(associateFieldVos);
        associateFieldResultVo.setReactionNumber(reactionNumber);
        associateFieldResultVo.setDifferentReactionNumber(differentReactionNumber);
        associateFieldResultVo.setEmptyReactionNumber(emptyReactionNumber);
        associateFieldResultVo.setOneReactionNumber(oneReactionNumber);
        //转换为AssociateFieldVo类型的page对象
        //todo 这里应该吧总的信息封装进去
        return associateFieldResultVo;
    }

    private List<AssociateFieldVo> convertAssociateFieldVos(List<Object[]> objectLsit) {
        List<AssociateFieldVo> associateFieldVoList = new ArrayList<>();
        try {
            for (Object[] objects : objectLsit) {
                AssociateFieldVo associateFieldVo = new AssociateFieldVo();
                associateFieldVo.setAssociateWord((String) objects[0]);
                associateFieldVo.setReactionWord((String) objects[1]);
                associateFieldVo.setReactionPos((String) objects[2]);
                associateFieldVo.setReactionWordNumber((BigInteger) objects[3]);
                //判断反应词是否是联想词
                Associate associate = new Associate();
                associate.setAssociateWord((String)objects[1]);
                Example<Associate> example = Example.of(associate);
                boolean b = associateRepository.exists(example);
                if (b)
                    associateFieldVo.setReactionIsAssociate(1);
                associateFieldVoList.add(associateFieldVo);
            }
        }catch (Exception e){
            throw new AssociateException(AssociateEnum.CONVERT_FAILED_1);
        }
        return associateFieldVoList;
    }

    private List<Integer> getAreaIds(List<Integer> ids, Integer originAreaId) {
        List<Area> areas = areaRepository.findByParentId(originAreaId);
        ids.add(areaRepository.getOne(originAreaId).getAreaId());
        for (Area area : areas) {
            getAreaIds(ids, area.getAreaId());
        }
        return ids;
    }

}
