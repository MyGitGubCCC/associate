package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Area;
import edu.hsd.associate.vo.AreaVo;
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
 * @date 2019/8/21 20:22
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class AreaRepositoryTest {

    @Autowired
    private AreaRepository areaRepository;

    @Test
    public void findByParentId() {
        List<AreaVo> areaVoList = getSonAreaVoList(0);
        Assert.assertNotNull(areaVoList);
    }

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

    @Test
    public void findByLocationId() {
    }
}