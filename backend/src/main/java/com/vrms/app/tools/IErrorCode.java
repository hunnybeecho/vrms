package com.vrms.app.tools;

/**
 * 常用API返回对象接口
 */
public interface IErrorCode {
    /**
     * 返回码
     */
    long getCode();

    /**
     * 返回信息
     */
    String getMessage();
}
