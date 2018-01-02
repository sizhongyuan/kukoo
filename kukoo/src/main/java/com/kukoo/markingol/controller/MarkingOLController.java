package com.kukoo.markingol.controller;

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
import com.kukoo.base.util.StaticMethod;
import com.kukoo.markingol.service.MarkingOLService;

@Controller
@RequestMapping("/markingOLController")
public class MarkingOLController {
	
	
	@Autowired
	public MarkingOLService markingOLService;
	

	
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
		
		JSONObject jsonObj = new JSONObject();
		return jsonObj;
	}
	
	

}
