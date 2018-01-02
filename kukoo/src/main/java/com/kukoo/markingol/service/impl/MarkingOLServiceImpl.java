package com.kukoo.markingol.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.kukoo.markingol.dao.MarkingOLMapper;
import com.kukoo.markingol.model.MarkingOL;
import com.kukoo.markingol.service.MarkingOLService;




/**
 * 在线答题实现类
 * @author Boco
 *
 */
public class MarkingOLServiceImpl implements MarkingOLService{

	
	@Autowired
	private MarkingOLMapper markingOLMapper;
	
	
	public void saveMarkingOL(MarkingOL markingOL) throws Exception {
		markingOLMapper.addMarkingOL(markingOL);
	}
	
}
