package edu.hsd.associate.dataobject;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

/**
 * @author 曹成成
 * @date 2019/8/21 13:42
 */
@Entity
@Data
public class Profession {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer professionId;

    private String professionNo;

    private String professionName;

    private Integer parentId;

}
