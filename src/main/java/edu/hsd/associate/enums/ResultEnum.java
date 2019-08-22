package edu.hsd.associate.enums;

import lombok.Getter;

/**
 * @author 曹成成
 * @date 2019/8/16 10:41
 */
@Getter
public enum  ResultEnum {

    STRING2INTS_FAILED(10, "字符串转int数组失败"),
    ADD_PSQ_FAILED(11, "插入问卷失败！"),
    PSQ_ID_FALSENESS(12, "问卷id不正确！"),
    PSQ_CONTENT_TO_LIST_FALSENED(13, "问卷内容转为List错误！"),
    PARAM_ERROR(1,"参数不正确"),
    ;

    private Integer code;

    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

}
