package com.kukoo.menu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @see 首页body页面
 * @return
 * @author
 */
@Controller
@RequestMapping("/menu")
public class menuController {
	
	static final String modelPath = "WEB-INF/pages/menu/";
	
	/**
	 * @see 展示首页
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showIndex", method = RequestMethod.GET)
	public ModelAndView showIndex(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showIndex");
		return model;
	}
	
	/**
	 * @see 展示项目介绍
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showProjectInfo", method = RequestMethod.GET)
	public ModelAndView showProject(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showProjectInfo");
		return model;
	}
	
	/**
	 * @see 展示文章精选
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showArticle", method = RequestMethod.GET)
	public ModelAndView showArticle(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showArticle");
		return model;
	}
	
	/**
	 * @see 展示在线答题
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showMarkingOL", method = RequestMethod.GET)
	public ModelAndView showMarkingOL(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showMarkingOL");
		return model;
	}
	
	/**
	 * @see 展示时间轴
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showTimeAxis", method = RequestMethod.GET)
	public ModelAndView showTimeAxis(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showTimeAxis");
		return model;
	}
	
	/**
	 * @see 展示用户中心
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showUserCenter", method = RequestMethod.GET)
	public ModelAndView showUserCenter(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showUserCenter");
		return model;
	}
	
	/**
	 * @see 展示注册
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showSignUp", method = RequestMethod.GET)
	public ModelAndView showSignUp(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showSignUp");
		return model;
	}
	
	/**
	 * @see 展示登陆
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showSignIn", method = RequestMethod.GET)
	public ModelAndView showSignIn(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showSignIn");
		return model;
	}
}
