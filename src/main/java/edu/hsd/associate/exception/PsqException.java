package edu.hsd.associate.exception;

import edu.hsd.associate.enums.ResultEnum;

/**
 * @author 曹成成
 * @date 2019/8/18 16:06
 */
public class PsqException extends RuntimeException {
    private Integer code;

    public PsqException(ResultEnum resultEnum){
        super(resultEnum.getMessage());
        this.code = resultEnum.getCode();
    }

    public PsqException(Integer code, String message){
        super(message);
        this.code = code;
    }

}
