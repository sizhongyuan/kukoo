package com.kukoo.backstage.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kukoo.base.util.PageUtils;
import com.kukoo.base.util.StringUtils;
import com.kukoo.logsystem.model.Log;
import com.kukoo.logsystem.service.LogService;
/**
 * 后台系统访问Controller类
 * @author gang
 *
 */
@Controller
@RequestMapping("/main")
public class MainController {
	static final String modelPath = "WEB-INF/backstage/";
	
	@Resource
	private LogService logService;
	
	@RequestMapping("/showLoginPage")
	public ModelAndView showLoginPage(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"login");
		return model;
	}
	
	@RequestMapping("/showMain")
	public ModelAndView showIndex(HttpServletRequest request) { 
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"index");
		return model;
	}
	
	@RequestMapping("/showSystemLog")
	public ModelAndView showSystemLog(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"systemLog");
		
		String pageNum = request.getParameter("pageNum");
		int pageNumInt = StringUtils.isBlank(pageNum) ? 1 : Integer.parseInt(pageNum.trim());
		int pageSize = 10;
		PageHelper.startPage(pageNumInt, pageSize);
		List<Map<String, Object>> list = logService.queryLogByPage();
		PageInfo<Map<String, Object>> page = new PageInfo<Map<String, Object>>(list);
		model.addObject("list", list);
		model.addObject("page", page);
		model.addObject("index_nums", PageUtils.listPageNums(page.getPageNum(),page.getPages()));
		System.out.println("==page日志数据=="+page.getList().get(0).toString());
		System.out.println("==list日志数据=="+list.toString());
		return model;
	}
	
	@RequestMapping("/showTest")
	public ModelAndView showTest(HttpServletRequest request) { 
		ModelAndView model = new ModelAndView();
		model.setViewName(modelPath+"Food");
		return model;
	}
}
