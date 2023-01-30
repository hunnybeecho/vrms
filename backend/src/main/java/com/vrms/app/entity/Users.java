package com.vrms.app.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class Users implements Serializable {
    private static final long serialVersionUID = -7071164517927872297L;
    /**
     * 用户ID
     */
    @ApiModelProperty(hidden = true)
    private Integer uid;
    /**
     * 用户名称
     */
    @ApiModelProperty(name = "username", value = "用户名", required = true, dataType = "String", example = "000")
    private String username;
    /**
     * 密码
     */
    @ApiModelProperty(name = "password", value = "密码", required = true, dataType = "String", example = "000000")
    private String password;
    /**
     * 性别
     */
    @ApiModelProperty(name = "sex", value = "性别", required = true, dataType = "String", example = "男")
    private String sex;
    /**
     * 年龄
     */
    @ApiModelProperty(name = "age", value = "年龄", required = true, dataType = "Integer", example = "20")
    private Integer age;
    /**
     * 身份证
     */
    @ApiModelProperty(name = "address", value = "住址", required = true, dataType = "String", example = "101010101")
    private String idcard;
    /**
     * 电话
     */
    @ApiModelProperty(name = "tel", value = "电话号码", required = true, dataType = "String", example = "110")
    private String tel;
    /**
     * 住址
     */
    @ApiModelProperty(name = "address", value = "住址", required = true, dataType = "String", example = "西科大")
    private String address;
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
     * 0未删除 , 1已删除
     */
    @ApiModelProperty(hidden = true)
    private Integer deleted;
    /**
     * 0未禁用,1已禁用
     */
    @ApiModelProperty(name = "stats", value = "状态", required = true, dataType = "Integer", example = "0")
    private Integer stats;
}
