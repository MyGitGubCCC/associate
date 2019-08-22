package edu.hsd.associate;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
//@Data
public class LoggerTest {

    //加入@Slf4j可以不用手动引入当前类
    //private final Logger logger = LoggerFactory.getLogger(LoggerTest.class);

    @Test
    public void test1(){
        //idea安装lombok插件，logger改为log
        log.debug("debug..");
        log.info("info..");
        log.error("error");
    }
}
