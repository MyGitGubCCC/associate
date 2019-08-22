package edu.hsd.associate.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/15 10:29
 */
@Getter
@Setter
public class DataGrid<T> {
    private long total;
    private List<T> rows;
}
