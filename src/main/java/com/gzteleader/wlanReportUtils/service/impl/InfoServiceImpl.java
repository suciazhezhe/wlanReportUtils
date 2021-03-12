package com.gzteleader.wlanReportUtils.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gzteleader.wlanReportUtils.dao.InfoMapper;
import com.gzteleader.wlanReportUtils.entity.Info;
import com.gzteleader.wlanReportUtils.service.InfoService;

@Service
public class InfoServiceImpl implements InfoService{
	@Autowired
	InfoMapper infoMapper;

	@Override
	public Info getInfo(String infoModel, String infoWb) {
		return infoMapper.selectByInfoKey(infoModel, infoWb);
	}

	@Override
	public List<Info> getInfos(String infoModel, String infoWb) {
		return infoMapper.selectListByInfoKey("%"+infoModel+"%", "%"+infoWb+"%", "%局域网%");
	}

}
