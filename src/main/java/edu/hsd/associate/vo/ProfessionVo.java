package edu.hsd.associate.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 14:45
 */
@Data
public class ProfessionVo {

    @JsonProperty(value = "id")
    private Integer professionId;

    @JsonIgnore
    private String professionNo;

    @JsonProperty(value = "text")
    private String professionName;

    private Boolean checked = false;// 是否勾选状态

    private String state = "closed";// 是否展开(open,closed)

    @JsonIgnore
    private Integer parentId;

    //@JsonInclude(JsonInclude.Include.NON_NULL)
    @JsonProperty(value = "children")
    private List<ProfessionVo> children;

}
