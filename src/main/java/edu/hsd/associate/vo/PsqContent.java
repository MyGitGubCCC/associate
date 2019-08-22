package edu.hsd.associate.vo;

import lombok.Data;

/**
 * @author 曹成成
 * @date 2019/8/19 12:53
 */
@Data
public class PsqContent {
    Integer contentId;
    String contentName;

    public PsqContent(Integer contentId, String contentName) {
        this.contentId = contentId;
        this.contentName = contentName;
    }
}
