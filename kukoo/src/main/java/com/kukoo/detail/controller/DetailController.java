package com.kukoo.detail.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kukoo.base.util.RedisUtil;
import com.kukoo.base.util.StaticMethod;

import redis.clients.jedis.Jedis;

/**
 * 详情页面控制器
 * @author chenjianghe
 *
 */
@Controller
@RequestMapping("/detail")
public class DetailController {
	
	static final String modelPath = "WEB-INF/pages/detail/";
	
	/**
	 * @see 展示详情页面
	 * @param request
	 * @return
	 * @author chenjianghe
	 * @throws IOException
	 */
	@RequestMapping(value = "/showDetail", method = RequestMethod.GET)
	public ModelAndView showDetail(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showDetail");
		model.addObject("userId", userId);
		return model;
	}

}
