package com.gzteleader.wlanReportUtils.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gzteleader.wlanReportUtils.Utils.ReportGenerator;
import com.gzteleader.wlanReportUtils.bean.ReportData;
import com.gzteleader.wlanReportUtils.properties.WlanReportProperties;
import com.gzteleader.wlanReportUtils.service.ReportDateService;
import com.gzteleader.wlanReportUtils.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	ReportDateService reportDateService;
	@Autowired
	WlanReportProperties wlanReportProperties;
	

	@Override
	public String generateReport(String infoModel, String infoWb) throws Exception {
		//获取基本信息
		ReportData reportData = reportDateService.getBaseInfo(infoModel, infoWb);
		//根据测试项目获取结果数据
		reportData = getReportResultData(reportData);
		//开始生成报告
		ReportGenerator reportGenerator = new ReportGenerator(wlanReportProperties, reportData.getInfoEt(), infoWb);
		//生成基本信息部分
		reportGenerator.generateBaseInfoReport(reportData);
		//生成附件部分
		getReportResult(reportData,reportGenerator);
		//仪表及附件部分
		reportGenerator.addInstrument(reportData);
		//存图文档
		reportGenerator.addPictureDocx(reportData);
		//合并各个部分文档，并保存结果文件
		String path = reportGenerator.mergeReport();
		return path;
	}


	@Override
	public Object test(String infoModel, String infoWb) throws Exception {
		//获取基本信息
		ReportData reportData = reportDateService.getBaseInfo(infoModel, infoWb);
		reportData = getReportResultData(reportData);
		return reportData;
	}
	
	private ReportData getReportResultData(ReportData reportData) {
		 Set<String> testItems = reportData.getTestItems().keySet();
		 for(String testItem : testItems) {
			 switch(testItem){
			    case "eirp" :
			    	//获取EIRP数据
					reportData = reportDateService.getEirpResult(reportData);
			        break;
			    case "maxpow" :
			    	//获取maxpow数据
					reportData = reportDateService.getMaxpowResult(reportData);
			        break;
			    case "oob" :
			    	//获取oob数据
					reportData = reportDateService.getOobResult(reportData);
			        break;
			    case "freq" :
			    	//获取freq数据
					reportData = reportDateService.getFreqResult(reportData);
			        break;
			    case "obw" :
			    	//获取obw数据
					reportData = reportDateService.getObwResult(reportData);
			        break;
			    case "cft" :
			    	//获取cft数据
					reportData = reportDateService.getCftResult(reportData);
			        break;
			    case "se" :
			    	//获取se数据
					reportData = reportDateService.getSeResult(reportData);
			        break;
			    case "tp" :
			    	//获取tp数据
					reportData = reportDateService.getTpResult(reportData);
			        break;
			    case "mp" :
			    	//获取mp数据
					reportData = reportDateService.getMpResult(reportData);
			        break;
			    default : 
			}
		 }
		return reportData;
	}
	
	private void getReportResult(ReportData reportData,ReportGenerator reportGenerator) throws Exception {
		Set<String> testItems = reportData.getTestItems().keySet();
		 for(String testItem : testItems) {
			 switch(testItem){
			    case "eirp" :
			    	//生成EIRP数据
					reportGenerator.addEirpPart(reportData);
			        break;
			    case "maxpow" :
			    	//生成Maxpow数据
					reportGenerator.addMaxpowPart(reportData);
			        break;
			    case "oob" :
			    	//生成oob数据
					reportGenerator.addOobPart(reportData);
			        break;
			    case "freq" :
			    	//生成freq数据
					reportGenerator.addFreqPart(reportData);
			        break;
			    case "obw" :
			    	//生成obw数据
					reportGenerator.addObwPart(reportData);
			        break;
			    case "cft" :
			    	//生成cft数据
					reportGenerator.addCftPart(reportData);
			        break;
			    case "se" :
			    	//生成se数据
					reportGenerator.addSePart(reportData);
			        break;
			    case "tp" :
			    	//生成tp数据
					reportGenerator.addTpPart(reportData);
			        break;
			    case "mp" :
			    	//生成mp数据
					reportGenerator.addMpPart(reportData);
			        break;
			    default : 
			}
		 }
	}
	
	
	
}
