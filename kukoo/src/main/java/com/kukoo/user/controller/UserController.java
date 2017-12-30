package com.kukoo.user.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.model.User;
import com.kukoo.base.service.IUserService;
import com.kukoo.base.tool.LogOutTool;
import com.kukoo.base.util.RedisUtil;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.base.util.UUIDHexGenerator;

import redis.clients.jedis.Jedis;

/**
 * 用户管理控制器
 * @author chenjianghe
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	/**
	 * 注入用户userService
	 */
	@Autowired
	private IUserService userService;
	
	
	/**
	   * 手机号校验（是否注册）
	   * @param request
	   * @param response
	   */
	  @RequestMapping(value = "/validateRegist", method = RequestMethod.POST)
	  public void validateRegist(HttpServletRequest request, HttpServletResponse response){
	    //获取form表单数据
	    String checkObj = StaticMethod.getString(request, "checkObj");
	    //JSON字符串序列化成JSON对象
	    JSONObject checkJosn = JSONObject.parseObject(checkObj);
	    String moible = StaticMethod.nullObject2String(checkJosn.getString("mobile"));
	    //根据手机号查询用户名是否存在
	    User user = userService.queryUserByMobile(moible);
	    JSONObject result = new JSONObject();
	    if (user == null){
	      result.put("mobileInUse", false);
	    }else {
	    	  result.put("mobileInUse", true);
	    }
	    String resultStr = result.toJSONString();
	    
	    StaticMethod.send(response, resultStr);
	  }
	  /**
	   * 登录表单校验
	   * @param request
	   * @param response
	   */
	  @RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
	  public void validateLogin(HttpServletRequest request, HttpServletResponse response){
	    //获取form表单数据
	    String loginObj = StaticMethod.getString(request, "loginObj");
	    //JSON字符串序列化成JSON对象
	    JSONObject loginJosn = JSONObject.parseObject(loginObj);
	    String accountNo = StaticMethod.nullObject2String(loginJosn.getString("mobile"));
	    String pwd = StaticMethod.nullObject2String(loginJosn.getString("pwd"));
	    String loginType = StaticMethod.nullObject2String(loginJosn.get("loginType"));
	    //根据账号查询用户名是否存在
	    User user = userService.queryUserByMobile(accountNo);
	    JSONObject result = new JSONObject();
	    //对密码解密
	    String password = StaticMethod.string2MD5(pwd);
	    if (user == null){
	      result.put("accountMsg", "手机号未注册");
	    }else if (loginType.equals("pwd") && !password.equals(user.getPassword())){
	      result.put("pwdMsg", "手机号密码错误");
	    }else {
	      result.put("user",user);
	    }
	    String resultStr = result.toJSONString();
	    
	    StaticMethod.send(response, resultStr);
	  }
	  
	  /**
	   * 登录成功
	   * @param request
	   * @param response
	   */
	  @RequestMapping(value = "/successLogin", method = RequestMethod.POST)
	  public void successLogin(HttpServletRequest request,HttpServletResponse response){
	      /*获取form表单数据*/
		  String accountNo = StaticMethod.getString(request, "inputAccount");
	      String pwd = StaticMethod.getString(request, "pwd");
	      JSONObject result = new JSONObject();
	      result.put("loginMsg", "登录成功");
	      User user = userService.queryUserByMobile(accountNo);
	      request.getSession().setAttribute("user", user);
	      try {
	    	  	String sessionId = request.getSession().getId();
	    	  	Jedis jedis = RedisUtil.getJedis();
	    	  	jedis.append(sessionId, user.getMobile());
	    	  	jedis.expire(sessionId, 60*60*24);//redis session时限
		  } catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		  }
	      String resultStr = result.toJSONString();
	      StaticMethod.send(response, resultStr);
	  }
	  
	  /**
	   * 注册
	   * @param request
	   * @param response
	   */
	  @RequestMapping(value = "/regist", method = RequestMethod.POST)
	  public void regist(HttpServletRequest request,HttpServletResponse response){
		  /*获取form表单数据*/
	      String mobile = StaticMethod.getString(request, "mobile");
	      String password = StaticMethod.getString(request, "password");
	      String userName = StaticMethod.getString(request, "userName");
	      /*创建user对象并赋值*/
	      User user = new User();
	      user.setMobile(mobile);
	      user.setPassword(StaticMethod.string2MD5(password));
	      user.setUserName(userName);
	      user.setSaveTime(new Date());
	      /*调用userService保存方法*/
	      userService.saveUser(user);
	  }

}
