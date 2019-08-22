package edu.hsd.associate.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * @author 曹成成
 * @date 2019/8/15 15:54
 */
@Getter
@Setter
public class AssociateWordVo {
    private Integer associateWordId;

    private String associateWord;

    @JsonProperty("associatePos")
    private String associatePosName;

    public AssociateWordVo() {
    }

    public AssociateWordVo(Integer associateWordId, String associateWord, String associatePosName) {
        this.associateWordId = associateWordId;
        this.associateWord = associateWord;
        this.associatePosName = associatePosName;
    }
}
