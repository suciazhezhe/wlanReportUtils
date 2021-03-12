package com.gzteleader.wlanReportUtils.service;

import java.util.List;

import com.gzteleader.wlanReportUtils.entity.Info;

public interface InfoService {
	
	Info getInfo(String infoModel, String infoWb);
	
	List<Info> getInfos(String infoModel, String infoWb);

}
