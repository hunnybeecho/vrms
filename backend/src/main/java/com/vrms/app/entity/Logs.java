package com.vrms.app.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class Logs implements Serializable {
    private static final long serialVersionUID = -4614792034904301943L;
    /**
     * 日志ID
     */
    @ApiModelProperty(hidden = true)
    private Integer opid;
    /**
     * 操作时间
     */
    @ApiModelProperty(name = "optime", value = "操作时间", dataType = "String", required = true, example = "00000")
    private String optime;
    /**
     * 操作ip
     */
    @ApiModelProperty(name = "ip", value = "操作ip", dataType = "String", required = true, example = "00000")
    private String ip;
    /**
     * 操作方法
     */
    @ApiModelProperty(name = "methods", value = "操作方法", dataType = "String", required = true, example = "none")
    private String methods;
    /**
     * 操作方法描述
     */
    @ApiModelProperty(name = "ddesc", value = "操作方法描述", dataType = "String", example = "none")
    private String ddesc;
}
