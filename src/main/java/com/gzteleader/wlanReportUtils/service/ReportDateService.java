package com.gzteleader.wlanReportUtils.service;

import com.gzteleader.wlanReportUtils.bean.ReportData;
import com.gzteleader.wlanReportUtils.common.BaseException.NoInfoException;

public interface ReportDateService {
	/**
	 * 获取项目基本信息
	 */
	ReportData getBaseInfo(String infoModel, String infoWb) throws NoInfoException;
	/**
	 * 获取eirp测试结果等相关数据
	 */
	ReportData getEirpResult(ReportData reportData);
	/**
	 * 获取Maxpow测试结果等相关数据
	 */
	ReportData getMaxpowResult(ReportData reportData);
	/**
	 * 获取oob测试结果等相关数据
	 */
	ReportData getOobResult(ReportData reportData);
	/**
	 * 获取freq测试结果等相关数据
	 */
	ReportData getFreqResult(ReportData reportData);
	/**
	 * 获取obw测试结果等相关数据
	 */
	ReportData getObwResult(ReportData reportData);
	/**
	 * 获取cft测试结果等相关数据
	 */
	ReportData getCftResult(ReportData reportData);
	/**
	 * 获取se测试结果等相关数据
	 */
	ReportData getSeResult(ReportData reportData);
	/**
	 * 获取tp测试结果等相关数据
	 */
	ReportData getTpResult(ReportData reportData);
	/**
	 * 获取mp测试结果等相关数据
	 */
	ReportData getMpResult(ReportData reportData);

}
