package edu.hsd.associate.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * area适应easyui的combox-tree的格式
 * @author 曹成成
 * @date 2019/8/21 20:15
 */
@Data
public class AreaVo {

    @JsonProperty(value = "id")
    private Integer areaId;

    @JsonProperty(value = "text")
    private String areaName;

    private Boolean checked = false;// 是否勾选状态

    private String state = "closed";// 是否展开(open,closed)

    @JsonIgnore
    private Integer parentId;

    //@JsonInclude(JsonInclude.Include.NON_NULL)
    @JsonProperty(value = "children")
    private List<AreaVo> children;
}
