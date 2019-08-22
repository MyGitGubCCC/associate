package edu.hsd.associate.enums;

import lombok.Getter;

/**
 * @author 曹成成
 * @date 2019/8/18 13:55
 */
@Getter
public enum PsqEnum {
    NO_REASED(0, "未发布"),
    RELEASED(1,"已发布"),
    ;

    private Integer code;

    private String message;

    PsqEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
