package com.kukoo.logsystem.annotation;

import java.lang.annotation.*; 
/**
 * 自定义注解 拦截Service
 * @author wanggang
 *
 */
@Target({ElementType.PARAMETER, ElementType.METHOD})    
@Retention(RetentionPolicy.RUNTIME)
public @interface SystemServiceLog {
	  String description()  default "";
}
