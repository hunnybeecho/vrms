package com.vrms.app.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class Appointment implements Serializable {
    private static final long serialVersionUID = -5731993730234173308L;
    /**
     * 预约ID
     */
    @ApiModelProperty(hidden = true)
    private Integer appid;
    /**
     * 用户外键
     */
    @ApiModelProperty(name = "uid", value = "预约外键", example = "1", dataType = "Integer", required = true)
    private Integer uid;

    @ApiModelProperty(hidden = true)
    private String username;
    /**
     * 预约地址外键
     */
    @ApiModelProperty(name = "addid", value = "预约地址外键", example = "1", dataType = "Integer", required = true)
    private Integer addid;

    @ApiModelProperty(hidden = true)
    private String address;

    /**
     * 疫苗外键
     */
    @ApiModelProperty(name = "avcid", value = "疫苗外键", example = "1", dataType = "Integer", required = true)
    private Integer avcid;

    @ApiModelProperty(hidden = true)
    private String avcname;

    /**
     * 支付金额
     */
    @ApiModelProperty(name = "money", value = "支付金额", example = "1", dataType = "String")
    private String money;
    /**
     * 预约状态 0已预约、1已取消
     */
    @ApiModelProperty(name = "appstats", value = "预约状态", example = "0", dataType = "Integer", required = true)
    private Integer appstats;
    /**
     * 预约时间
     */
    @ApiModelProperty(name = "apptime", value = "预约时间", example = "1000", dataType = "String", required = true)
    private String apptime;
    /**
     * 接种状态 0未接种、1已接种
     */
    @ApiModelProperty(name = "stats", value = "接种状态", example = "0", dataType = "Integer", required = true)
    private Integer stats;
    /**
     * 创建时间
     */
    @ApiModelProperty(hidden = true)
    private String ctime;
    /**
     * 修改时间
     */
    @ApiModelProperty(hidden = true)
    private String mtime;
    /**
     * 0未删除 1已删除
     */
    @ApiModelProperty(hidden = true)
    private Integer deleted;
    /**
     * 备注
     */
    @ApiModelProperty(name = "remark", value = "备注", example = "none", dataType = "String")
    private String remark;
}
