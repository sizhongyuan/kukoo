package com.kukoo.homepage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.RedisUtil;

import redis.clients.jedis.Jedis;

/**
 * @see 首页body页面
 * @return
 * @author
 */
@Controller
@RequestMapping("/homePage")
public class HomePageController {
	
	static final String modelPath = "WEB-INF/pages/homepage/";
	
	/**
	 * @see 展示首页
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showHomePage", method = RequestMethod.GET)
	public ModelAndView showIndex(HttpServletRequest request) {
		//读取session
		Jedis jedis = RedisUtil.getJedis();
		String userId = jedis.get(request.getSession().getId());
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showHomePage");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 列表页面
	 * @param request
	 * @return
	 * @author WG
	 * @throws IOException
	 */
	@RequestMapping(value = "/showListPage", method = RequestMethod.GET)
	public ModelAndView showListPage(HttpServletRequest request) {
		//读取session
		Jedis jedis = RedisUtil.getJedis();
		String userId = jedis.get(request.getSession().getId());
		ModelAndView model = new ModelAndView();
		model.setViewName("WEB-INF/pages/list/list");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * @see 列表页面
	 * @param request
	 * @return
	 * @author WG
	 * @throws IOException
	 */
	@RequestMapping(value = "/showListPage2", method = RequestMethod.GET)
	public ModelAndView showListPage2(HttpServletRequest request) {
		//读取session
		Jedis jedis = RedisUtil.getJedis();
		String userId = jedis.get(request.getSession().getId());
		ModelAndView model = new ModelAndView();
		model.setViewName("WEB-INF/pages/list/list2");
		model.addObject("userId", userId);
		return model;
	}
}
