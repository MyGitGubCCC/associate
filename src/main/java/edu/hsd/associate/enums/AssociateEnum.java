package edu.hsd.associate.enums;

import lombok.Getter;

/**
 * @author 曹成成
 * @date 2019/8/18 13:55
 */
@Getter
public enum AssociateEnum {
    CONVERT_FAILED_1(1,"pageObject转为Page<AssociateFieldVo>出错"),
    ;

    private Integer code;

    private String message;

    AssociateEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
