package edu.hsd.associate.dto;

import lombok.Data;
import org.hibernate.annotations.Parameter;

/**
 * @author 曹成成
 * @date 2019/8/23 9:21
 */
@Data
public class AssociateDTO {


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
    /*年级*/
    private Integer gradeId;
    /*年龄下限*/
    private Integer age1;
    /*年龄上限*/
    private Integer age2;
    /*性别*/
    private Integer sex;
    /*民族*/
    private Integer nationId;
    /*生源地*/
    private Integer originAreaId;
    /*现居地*/
    private Integer presentAreaId;
    /*生源地*/
    private Integer originLocationId;
    /*现居地*/
    private Integer presentLocationId;
    /*联系词词性*/
    private String associatePos;
    /*反应词词性*/
    private String reactionPos;
    /*问卷id*/
    private Integer psqId;
    /*答题时间*/
    //private Date answerTime;
}
