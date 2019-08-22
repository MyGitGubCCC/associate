package edu.hsd.associate.dataobject;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author 曹成成
 * @date 2019/8/17 16:56
 */
@Entity
@Data
public class Language {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //自增长主键
    private Integer languageId;

    private String languageName;

}
