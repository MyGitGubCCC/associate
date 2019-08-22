package edu.hsd.associate.dataobject;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * @author 曹成成
 * @date 2019/8/21 8:36
 */
@Entity
@Data
public class Associate {

    /*id*/
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //自增长主键
    private Integer associateId;
    /*联想词*/
    private String associateWord;
    /*反应词*/
    private String reactionWord;
    /*学校名称*/
    private String schoolName;
    /*职业id*/
    private Integer jobId;
    /*学科专业id*/
    private Integer professionId;
    /*年龄*/
    private Integer age;
    /*性别*/
    private Integer sex;
    /*民族*/
    private Integer nationId;
    /*生源地*/
    private Integer originAreaId;
    /*现居地*/
    private Integer presentAreaId;
    /*联系词词性*/
    private String associatePos;
    /*反应词词性*/
    private String reactionPos;
    /*问卷id*/
    private Integer psqId;
    /*答题时间*/
    private Date answerTime;

}
