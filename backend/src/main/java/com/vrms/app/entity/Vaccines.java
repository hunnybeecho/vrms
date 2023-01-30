package com.vrms.app.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class Vaccines implements Serializable {
    private static final long serialVersionUID = 9103997851563767317L;
    /**
     * 疫苗ID
     */
    @ApiModelProperty(hidden = true)
    private Integer avcid;
    /**
     * 疫苗名称
     */
    @ApiModelProperty(name = "avcname", value = "疫苗名称", dataType = "String", required = true, example = "新冠疫苗")
    private String avcname;
    /**
     * 生成厂家
     */
    @ApiModelProperty(name = "manufactor", value = "生产厂家", dataType = "String", required = true, example = "科兴")
    private String manufactor;
    /**
     * 生产日期
     */
    @ApiModelProperty(name = "mdate", value = "生产日期", dataType = "String", required = true, example = "20211228")
    private String mdate;
    /**
     * 单价
     */
    @ApiModelProperty(name = "price", value = "单价", dataType = "String", example = "30")
    private String price;
    /**
     * 说明
     */
    @ApiModelProperty(name = "instructions", value = "说明", dataType = "String", required = true, example = "none")
    private String instructions;
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
}
