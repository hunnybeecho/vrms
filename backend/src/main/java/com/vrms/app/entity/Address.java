package com.vrms.app.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class Address implements Serializable {
    private static final long serialVersionUID = 7034598129962068411L;
    /**
     * 地址ID
     */
    @ApiModelProperty(hidden = true)
    private Integer addid;
    /**
     * 地址名称
     */
    @ApiModelProperty(name = "address", value = "疫苗预约地址", example = "医院", dataType = "String", required = true)
    private String address;
    /**
     * 地址详情
     */
    @ApiModelProperty(name = "detail", value = "地址详情", example = "人民医院", dataType = "String", required = true)
    private String detail;
    /**
     * 电话
     */
    @ApiModelProperty(name = "tel", value = "疫苗预约电话", example = "101010011", dataType = "String", required = true)
    private String tel;
    /**
     * 添加时间
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
}
