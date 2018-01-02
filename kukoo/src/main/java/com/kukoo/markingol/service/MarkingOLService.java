package com.kukoo.markingol.service;

import java.util.List;
import java.util.Map;

import com.kukoo.markingol.model.MarkingOL;




/**
 * 在线答题Service 接口
 * @author zhaobowen
 *
 */
public interface MarkingOLService{
	
	/**
	 * 新增信息
	 * @param timingchecktasktemplate
	 * @param baseMain
	 * @param commonAssignmentMain
	 * @throws Exception
	 */
	public void saveMarkingOL(MarkingOL markingOL) throws Exception;
	
}
