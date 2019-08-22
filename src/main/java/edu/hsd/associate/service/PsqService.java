package edu.hsd.associate.service;

import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.vo.PsqVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 20:48
 */
public interface PsqService {

    Page<PsqVo> findAll(Pageable pageable, Psq searchPsq);

    Psq addPsq(Psq psq);

    Psq updatePsqState(Psq psq);

    Psq findByPsqId(Integer PsqId);

    void deleteByIdIn(List<Integer> ids);
}
