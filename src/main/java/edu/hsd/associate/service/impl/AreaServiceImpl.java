package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Area;
import edu.hsd.associate.repository.AreaRepository;
import edu.hsd.associate.service.AreaService;
import edu.hsd.associate.vo.AreaVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 20:21
 */
@Service
public class AreaServiceImpl implements AreaService {

    @Autowired
    private AreaRepository areaRepository;

    /**
     * 获取地区树形结构
     * @return
     */
    @Override
    public List<AreaVo> findTreeAreaVo() {
        List<AreaVo> areaVoList = getSonAreaVoList(0);
//        Assert.assertNotNull(areaVoList);
        return areaVoList;
    }

    /**
     * 递归获取areaVo子树
     * @param parentId
     * @return
     */
    private List<AreaVo> getSonAreaVoList(Integer parentId) {
        List<Area> areaList = areaRepository.findByParentId(parentId);
        List<AreaVo> areaVoList =  convertAreaVos(areaList);
        for (AreaVo areaVo : areaVoList) {
            if (!areaRepository.existsByParentId(areaVo.getAreaId()))
                areaVo.setChildren(null);
            else areaVo.setChildren(getSonAreaVoList(areaVo.getAreaId()));
        }
        return areaVoList;
    }

    /**
     * List<Area> 转成 List<AreaVo>
     * @param areaList
     * @return
     */
    private List<AreaVo> convertAreaVos(List<Area> areaList) {
        List<AreaVo> areaVoList = new ArrayList<>();
        for (Area area : areaList) {
            AreaVo areaVo = new AreaVo();
            BeanUtils.copyProperties(area, areaVo);
            if (!areaRepository.existsByParentId(areaVo.getAreaId())){
                areaVo.setState("open");
            }
            areaVoList.add(areaVo);
        }
        return areaVoList;
    }
}
