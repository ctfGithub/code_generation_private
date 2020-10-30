package com.ctf.main;

import java.sql.SQLException;

import com.ctf.factory.AutoGenerationCodeTool;
import com.ctf.factory.BeanProperties;
import com.ctf.util.ConnectionUtil;


public class CreateCodeMain {

	/**
	 * @param  args
	 * @throws SQLException 
	 * @author ctf
	 */
//	public static void main(String[] args) {
//
//		BeanProperties.setPackage("com.ztesoft.bss.salesres");//包名
//		BeanProperties.setTableName("COUPON_INST");//数据库表名
//		BeanProperties.setSchema("springboot");//数据库名称
// 		BeanProperties.setPath("D:/java");//生成的类存放的路径
// 		BeanProperties.setAuthor("ctf");//代码生成者
//		ConnectionUtil.dbUrl = "jdbc:mysql://localhost:3306/springboot?characterEncoding=utf-8&serverTimezone=UTC";
//		ConnectionUtil.theUser = "work";//数据库登录用户
//		ConnectionUtil.thePw = "123456";//数据库登录用户密码
//		//生成代码
//		new AutoGenerationCodeTool().createCode();
//
//	}



	public static void main(String[] args) {

		BeanProperties.setPackage("Java");//包名
		BeanProperties.setTableName("dj_customer_info");//数据库表名
		BeanProperties.setSchema("dj_second_phase");//数据库名称
		BeanProperties.setPath("C:\\upload");//生成的类存放的路径
		BeanProperties.setAuthor("caotengfei");//代码生成者
		ConnectionUtil.dbUrl = "jdbc:mysql://127.0.0.1:3306/dj_second_phase?characterEncoding=utf-8&serverTimezone=UTC";
		ConnectionUtil.theUser = "root";//数据库登录用户
		ConnectionUtil.thePw = "123456";//数据库登录用户密码
		//生成代码
		new AutoGenerationCodeTool().createCode();

	}

}
