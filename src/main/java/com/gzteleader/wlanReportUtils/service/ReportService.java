package com.gzteleader.wlanReportUtils.service;

public interface ReportService {
	
	String generateReport(String infoModel, String infoWb) throws Exception;
	
	Object test(String infoModel, String infoWb) throws Exception;

}
