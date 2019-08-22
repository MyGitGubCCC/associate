package edu.hsd.associate.utils;

import edu.hsd.associate.dataobject.Language;
import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.dataobject.Psqtype;
import edu.hsd.associate.vo.PsqVo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

import static org.junit.Assert.*;

/**
 * @author 曹成成
 * @date 2019/8/18 12:58
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ConvertUtilsTest {

    @Test
    public void psq2PsqVo() {
        Psq psq = new Psq();
        psq.setPsqName("问卷");
        psq.setPsqState(1);
        Language language = new Language();
        language.setLanguageName("汉语");
        psq.setLanguage(language);
        Psqtype psqtype = new Psqtype();
        psqtype.setPsqtypeName("类型2");
        psq.setPsqtype(psqtype);
        psq.setPsqContent("内容1");
        psq.setPsqId(1);
        psq.setReleaseTime(new Date());
        PsqVo psqVo = ConvertUtils.Psq2PsqVo(psq);
        Assert.assertNotNull(psqVo);
    }
}