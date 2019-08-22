package edu.hsd.associate.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/22 15:04
 */
@Data
public class ageVo {

    @JsonProperty(value = "id")
    private Integer id;

    @JsonProperty(value = "text")
    private String ageText;

    private Boolean checked = false;// 是否勾选状态

    private String state = "closed";// 是否展开(open,closed)

    @JsonIgnore
    private Integer parentId;

    //@JsonInclude(JsonInclude.Include.NON_NULL)
    @JsonProperty(value = "children")
    private List<AreaVo> children;
}
