package edu.hsd.associate.vo;

import lombok.Data;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 8:24
 */
@Data
public class AssociateFieldResultVo {

    private String associateWord;

    private long reactionNumber;

    private long differentReactionNumber;

    private long emptyReactionNumber;

    private long oneReactionNumber;

    private List<AssociateFieldVo> associateFieldVoList;

}
