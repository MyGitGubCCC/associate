package edu.hsd.associate.exception;

import edu.hsd.associate.enums.AssociateEnum;
import edu.hsd.associate.enums.ResultEnum;

/**
 * @author 曹成成
 * @date 2019/8/21 11:21
 */
public class AssociateException extends RuntimeException {
    private Integer code;

    public AssociateException(AssociateEnum associateEnum){
        super(associateEnum.getMessage());
        this.code = associateEnum.getCode();
    }

    public AssociateException(Integer code, String message){
        super(message);
        this.code = code;
    }

}
