package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Profession;
import edu.hsd.associate.vo.ProfessionVo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 14:40
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ProfessionRepositoryTest {

    @Autowired
    private ProfessionRepository professionRepository;

    @Test
    public void findTreeProfession(){
        List<Profession> professions = professionRepository.findByParentId(0);
        List<ProfessionVo> professionVos = convertProfessionVos(professions);
        for (ProfessionVo professionVo : professionVos) {
            List<Profession> professions1 = professionRepository.findByParentId(professionVo.getProfessionId());
            List<ProfessionVo> professionVos1 = convertProfessionVos(professions1);
            professionVo.setChildren(professionVos1);
        }
        Assert.assertNotNull(professions);
    }

    private List<ProfessionVo> convertProfessionVos(List<Profession> professions) {
        List<ProfessionVo> professionVos = new ArrayList<>();
        for (Profession profession : professions) {
            ProfessionVo professionVo = new ProfessionVo();
            BeanUtils.copyProperties(profession, professionVo);
            professionVos.add(professionVo);
        }
        return professionVos;
    }
}