package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Profession;
import edu.hsd.associate.repository.ProfessionRepository;
import edu.hsd.associate.service.ProfessionService;
import edu.hsd.associate.utils.ConvertUtils;
import edu.hsd.associate.vo.ProfessionVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 15:03
 */
@Service
@Slf4j
public class ProfessionServiceImpl implements ProfessionService {

    @Autowired
    private ProfessionRepository professionRepository;

    @Override
    public List<ProfessionVo> findTreeProfession() {
        List<Profession> professions = professionRepository.findByParentId(0);
        List<ProfessionVo> professionVos = ConvertUtils.convertProfessionVos(professions);
        for (ProfessionVo professionVo : professionVos) {
            List<Profession> professions1 = professionRepository.findByParentId(professionVo.getProfessionId());
            List<ProfessionVo> professionVos1 = ConvertUtils.convertProfessionVos(professions1);
            for (ProfessionVo vo : professionVos1) {
                vo.setState("open");
            }
            professionVo.setChildren(professionVos1);
        }
        return professionVos;
    }
}
