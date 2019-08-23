package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.enums.ResultEnum;
import edu.hsd.associate.exception.PsqException;
import edu.hsd.associate.repository.PsqRepository;
import edu.hsd.associate.service.PsqService;
import edu.hsd.associate.utils.ConvertUtils;
import edu.hsd.associate.vo.PsqVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import javax.xml.transform.Result;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 20:56
 */
@Service
@Slf4j
public class PsqServiceImpl implements PsqService {

    @Autowired
    private PsqRepository psqRepository;

    @Override
    public Page<PsqVo> findAllPage(Pageable pageable, Psq psq) {
        //psqName模糊查询
        ExampleMatcher matcher = ExampleMatcher.matching().withMatcher("psqName",
                ExampleMatcher.GenericPropertyMatchers.contains());
        Example<Psq> example = Example.of(psq, matcher);
        Page<Psq> psqPage = psqRepository.findAll(example, pageable);
        List<PsqVo> psqVoList = ConvertUtils.Psqs2PsqVos(psqPage.getContent());
        Page<PsqVo> psqVoPage = new PageImpl<>(psqVoList, psqPage.getPageable(),psqPage.getTotalElements());
        return psqVoPage;
    }

    @Override
    public List<Psq> findAll() {
        return psqRepository.findAll();
    }

    @Override
    @Transactional
    public Psq addPsq(Psq psq) {
        Psq psq1;
        try {
            psq1 = psqRepository.save(psq);
        }catch (Exception e){
            log.error("插入问卷失败！");
            throw new PsqException(ResultEnum.ADD_PSQ_FAILED);
        }
        return psq1;
    }

    @Override
    @Transactional
    public Psq updatePsqState(Psq psq) {
        Psq psq1 = findByPsqId(psq.getPsqId());
        psq1.setPsqState(psq.getPsqState());
        Psq psq2 = addPsq(psq1);
        return psq2;
    }

    @Override
    public Psq findByPsqId(Integer PsqId) {
        Psq psq;
        try {
            psq = psqRepository.findById(PsqId).get();
        }catch (Exception e){
            log.error("问卷id不存在！");
            throw new PsqException(ResultEnum.PSQ_ID_FALSENESS);
        }
        return psq;
    }

    @Override
    @Transactional
    public void deleteByIdIn(List<Integer> ids) {
         psqRepository.deleteByPsqIdIn(ids);
    }
}
