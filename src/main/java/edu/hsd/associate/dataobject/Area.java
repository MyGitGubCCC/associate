package edu.hsd.associate.dataobject;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author 曹成成
 * @date 2019/8/21 20:09
 */
@Entity
@Data
public class Area {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer areaId;

    private String areaName;

    private Integer locationId;

    private Integer parentId;
}
