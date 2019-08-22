package edu.hsd.associate.exception;

import edu.hsd.associate.enums.ResultEnum;

/**
 * @author 曹成成
 * @date 2019/8/16 10:41
 */
public class ConvertUtilsException extends RuntimeException {

    private Integer code;

    public ConvertUtilsException(ResultEnum resultEnum){
        super(resultEnum.getMessage());
        this.code = resultEnum.getCode();
    }
}
