package edu.hsd.associate.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.math.BigInteger;

/**
 * @author 曹成成
 * @date 2019/8/20 20:23
 */
@Data
public class AssociateFieldVo {

//    @JsonProperty("id")
//    private Integer associateId;
    /*联想词*/
    private String associateWord;
    /*反应词*/
    private String reactionWord;
    /*反应词词性*/
    private String reactionPos;
    /*相同反应词个数*/
    private BigInteger reactionWordNumber;

    /*反应词是否是联想词，0不是，1是*/
    private Integer reactionIsAssociate;

}
