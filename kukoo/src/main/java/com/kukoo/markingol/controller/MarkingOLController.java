package com.kukoo.markingol.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.kukoo.base.util.RedisUtil;
import com.kukoo.base.util.StaticMethod;
import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.markingol.service.MarkingOLService;

import redis.clients.jedis.Jedis;

@Controller
@RequestMapping("/markingOLController")
public class MarkingOLController {
	
	static final String modelPath = "WEB-INF/pages/markingol/";
	
	@Autowired
	public MarkingOLService markingOLService;
	
	/**
	 * @see 展示在线答题
	 * @param request
	 * @return
	 * @author 张世杰
	 * @throws IOException
	 */
	@RequestMapping(value = "/showMarkingOL", method = RequestMethod.GET)
	public ModelAndView showMarkingOL(HttpServletRequest request) {
		//读取session
//		Jedis jedis = RedisUtil.getJedis();
//		String userId = jedis.get(request.getSession().getId());
		String sessionId = request.getSession().getId();
		String userId = StaticMethod.nullObject2String(request.getSession().getAttribute(sessionId));
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"showMarkingOL");
		model.addObject("userId", userId);
		return model;
	}
	
	/**
	 * 根据答题信息返回得分等信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/addMarkingOL", method=RequestMethod.GET)
	@ResponseBody
	public Object addMarking(HttpServletRequest request) throws Exception{
		//总得分
		String score = "";
		String answer1 = StaticMethod.nullObject2String(request.getParameter("checked1"));
		String answer2 = StaticMethod.nullObject2String(request.getParameter("checked2"));
		String answer3 = StaticMethod.nullObject2String(request.getParameter("checked3"));
		String answer4 = StaticMethod.nullObject2String(request.getParameter("checked4"));
		String answer7 = StaticMethod.nullObject2String(request.getParameter("checked7"));
		String answer8 = StaticMethod.nullObject2String(request.getParameter("checked8"));
		String answer9 = StaticMethod.nullObject2String(request.getParameter("checked9"));
		String answer10 = StaticMethod.nullObject2String(request.getParameter("checked10"));
		String answer11 = StaticMethod.nullObject2String(request.getParameter("checked11"));
		String answer12 = StaticMethod.nullObject2String(request.getParameter("checked12"));
		
		MarkingOL aa = new MarkingOL();
		
		aa.setAnswer_time(new Date());
		aa.setQuestionone_assi("111");
	
		markingOLService.saveMarkingOL(aa);
		JSONObject jsonObj = new JSONObject();
		return jsonObj;
	}
	
	

}
