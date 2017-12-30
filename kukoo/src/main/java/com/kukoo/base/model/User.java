package com.kukoo.base.model;

import java.util.Date;

/**
 * 用户模型
 * @author chenjianghe
 *
 */
public class User {

	/**
	 * 主键id
	 */
	private String id;
	
	/**
	 * 用户id
	 */
	private String userId;
	
	/**
	 * 用户名
	 */
	private String userName;
	
	/**
	 * 手机号
	 */
	private String mobile;
	
	/**
	 * 密码
	 */
	private String password;
	
	/**
	 * 邮箱地址
	 */
	private String email;
	
	/**
	 * 账号状态 0正常 1锁定
	 */
	private String status;
	
	/**
	 * 删除标识 0未删除 1已删除
	 */
	private String deleted;
	
	/**
	 * 注册时间
	 */
	private Date saveTime;
	
	/**
	 * 更新时间
	 */
	private Date updateTime;
	
	/**
	 * 失败次数
	 */
	private String count;
	
	/**
	 * 验证码
	 */
	private String captcha;
	
	/**
	 * 验证码有效时间
	 */
	private Date captchaTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public Date getSaveTime() {
		return saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	public Date getCaptchaTime() {
		return captchaTime;
	}

	public void setCaptchaTime(Date captchaTime) {
		this.captchaTime = captchaTime;
	}
	
	
}
