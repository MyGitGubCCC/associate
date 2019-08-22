package edu.hsd.associate.vo;

import lombok.Data;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author 曹成成
 * @date 2019/8/17 19:14
 */
@Data
public class PsqVo {

    /**
     * 问卷id
     */
    private Integer psqId;
    //问卷名
    private String psqName;
    //问卷题目
    private List<PsqContent> psqContentList;
    //问卷题目数量
    private Integer psqNumber;
    //问卷类型
    private String psqtypeName;
    //问卷状态
    private String psqState;
    //问卷语言
    private String languageName;
    //发布创建时间
    private Date releaseTime;
}
