package com.vrms.app.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class Administrators implements Serializable {
    private static final long serialVersionUID = 7323714487804683186L;

    /**
     * 管理员ID
     */
    @ApiModelProperty(hidden = true)
    private Integer aid;

    /**
     * 管理员名称
     */
    @ApiModelProperty(name = "username", value = "管理员名称", required = true, dataType = "String", example = "admin")
    private String username;

    /**
     * 管理员密码
     */
    @ApiModelProperty(name = "password", value = "管理员密码", required = true, dataType = "String", example = "000000")
    private String password;

    /**
     * 头像
     */
    @ApiModelProperty(name = "images", value = "头像", required = true, dataType = "String", example = "000000")
    private String images;

    /**
     * 状态
     */
    @ApiModelProperty(name = "stats", value = "状态", required = true, dataType = "Integer", example = "0")
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
     * 0未删除,1已删除
     */
    @ApiModelProperty(hidden = true)
    private Integer deleted;
}
