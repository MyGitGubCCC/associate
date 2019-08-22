package edu.hsd.associate.vo;

import lombok.Getter;
import lombok.Setter;

/**
 * @author 曹成成
 * @date 2019/8/15 21:12
 */
@Getter
@Setter
public class MessageVo {
    boolean success;
    String msg;

    public MessageVo(boolean success, String msg) {
        this.success = success;
        this.msg = msg;
    }
}
