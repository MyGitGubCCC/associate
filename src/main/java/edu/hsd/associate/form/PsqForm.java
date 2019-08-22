package edu.hsd.associate.form;

import lombok.Data;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * @author 曹成成
 * @date 2019/8/18 18:13
 */
@Data
public class PsqForm {

    @NotBlank(message = "问卷名必填")
    private String psqName;

    private String psqContent;
    @Min(value = 1,message = "答题数不能小于1")
    private Integer reactionNumber;
    @NotNull(message = "问卷类型必填")
    private Integer psqtypeId;
    @NotNull(message = "问卷语言必填")
    private Integer languageId;

    private Integer psqState;
}
