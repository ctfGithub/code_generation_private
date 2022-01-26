package com.ctf.factory;

import com.ctf.enums.ResultEnum;
import com.ctf.exception.AccException;

/**
* @Description:  数据库驱动工具类
* @Author: ctf
* @Date: 2019/5/13 14:20
*/
public class DriverFactory {
    private final static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
    private final static String DRIVER_ORACLE = "oracle.jdbc.driver.OracleDriver";

    public static String getDriver(String url) throws AccException {
        if (url.contains("mysql")) {
            return DRIVER_MYSQL;
        }
        if (url.contains("oracle")) {
            return DRIVER_ORACLE;
        }
        throw new AccException(ResultEnum.DRIVER_NOT_EXIST);
    }

}