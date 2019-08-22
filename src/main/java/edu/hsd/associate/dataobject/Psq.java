package edu.hsd.associate.dataobject;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.util.Date;

/**
 * @author 曹成成
 * @date 2019/8/17 20:18
 */
@Entity
@Data
@DynamicUpdate
public class Psq {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//自增主键
    private Integer psqId;

    private String psqName;

    private String psqContent;

    @ManyToOne
    @JoinColumn(name = "psqtype_id")
    private Psqtype psqtype;
    //private Integer psqtypeId;

    private Integer psqState;

    @ManyToOne
    @JoinColumn(name = "language_id")
    private Language language;
    //private Integer languageId;

    private Date releaseTime;

}
