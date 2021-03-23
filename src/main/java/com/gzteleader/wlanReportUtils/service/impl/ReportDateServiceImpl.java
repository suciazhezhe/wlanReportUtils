package com.gzteleader.wlanReportUtils.service.impl;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gzteleader.wlanReportUtils.Utils.DataHandler;
import com.gzteleader.wlanReportUtils.bean.ReportData;
import com.gzteleader.wlanReportUtils.common.BaseException;
import com.gzteleader.wlanReportUtils.common.BaseException.NoInfoException;
import com.gzteleader.wlanReportUtils.entity.Info;
import com.gzteleader.wlanReportUtils.entity.WlanCft;
import com.gzteleader.wlanReportUtils.entity.WlanEirp;
import com.gzteleader.wlanReportUtils.entity.WlanFreq;
import com.gzteleader.wlanReportUtils.entity.WlanMaxpow;
import com.gzteleader.wlanReportUtils.entity.WlanMaxpower;
import com.gzteleader.wlanReportUtils.entity.WlanObw;
import com.gzteleader.wlanReportUtils.entity.WlanOob;
import com.gzteleader.wlanReportUtils.entity.WlanPower;
import com.gzteleader.wlanReportUtils.entity.WlanSe;
import com.gzteleader.wlanReportUtils.properties.WlanReportProperties;
import com.gzteleader.wlanReportUtils.service.InfoService;
import com.gzteleader.wlanReportUtils.service.ReportDateService;
import com.gzteleader.wlanReportUtils.service.WlanResultDataService;

@Service
public class ReportDateServiceImpl implements ReportDateService{
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	InfoService infoService;
	@Autowired
	WlanResultDataService wlanResultDataService;
	@Autowired
	WlanReportProperties wlanReportProperties;

	/**
	 * 获取基本信息等相关数据
	 */
	@Override
	public ReportData getBaseInfo(String infoModel, String infoWb) throws NoInfoException {
		logger.info("infoKey:"+"Model"+infoModel+"Wb"+infoWb);
		Info info = infoService.getInfo(infoModel, infoWb);
		if(info == null) {
			throw new BaseException.NoInfoException("Info not found: infoModel("+infoModel+"); infoWb("+infoWb+")");
		}
		ReportData reportData = new ReportData(info.getInfoId(),info.getInfoEt());
		Map<String, String> baseInfo = reportData.getBaseInfo();
		//页眉替换和原来字符长度不一样会导致页码出错
		baseInfo.put("TA-GZTD0000-0000-0", info.getInfoEt());
		baseInfo.put("infoWb", infoWb.replace("设备", ""));
		baseInfo.put("infoWb1", infoWb.replace("设备", "").replace("GHz", "GHz频段"));
		baseInfo.put("infoModel", infoModel);
		baseInfo.put("infoClamp", info.getInfoClamp().toString());
		baseInfo.put("infoTemp", info.getInfoTemp().toString());
		baseInfo.put("infoHum", info.getInfoHum().toString());
		baseInfo.put("infoAtmos", info.getInfoAtmos().toString());
		SimpleDateFormat format = new SimpleDateFormat("YYYY年MM月dd日");
		baseInfo.put("infoTestTime", format.format(info.getInfoTesttime()));
		baseInfo.put("infoSerialone", info.getInfoSerialone());
		baseInfo.put("infoSerialtwo", info.getInfoSerialtwo());
		baseInfo.put("infoSerialthree", info.getInfoSerialthree());
		Map<String,Map<String,String>> classifications = wlanReportProperties.getTestItem();
		reportData.setTestItems(classifications.get(infoWb));
		reportData.setSeLimits(wlanReportProperties.getSeLimit().get(infoWb));
		reportData.setTemplateDocx("wlanTemplate/"+reportData.getBaseInfo().get("infoWb"));
		return reportData;
	}
	
	/**
	 * 获取eirp测试结果等相关数据
	 */
	@Override
	public ReportData getEirpResult(ReportData reportData){
		List<WlanEirp> wlanEirps = wlanResultDataService.selectEirpByInfoId(reportData.getInfoId());
		//对wlanEirp结果进行排序，按model,rate,ant,count,freq
		reportData.setWlanEirpMap(DataHandler.toWlanFormatMap(wlanEirps));
		return reportData;
	}

	@Override
	public ReportData getMaxpowResult(ReportData reportData) {
		List<WlanMaxpow> wlanMaxpows = wlanResultDataService.selectMaxpowByInfoId(reportData.getInfoId());
		reportData.setWlanMaxpowMap(DataHandler.toWlanFormatMap(wlanMaxpows));
		return reportData;
	}

	@Override
	public ReportData getOobResult(ReportData reportData) {
		List<WlanOob> wlanOobs = wlanResultDataService.selectOobByInfoId(reportData.getInfoId());
		reportData.setWlanOobMap(DataHandler.toWlanFormatMap(wlanOobs));
		return reportData;
	}

	@Override
	public ReportData getFreqResult(ReportData reportData) {
		List<WlanFreq> wlanFreqs = wlanResultDataService.selectFreqByInfoId(reportData.getInfoId());
		reportData.setWlanFreqMap(DataHandler.toWlanFormatMap(wlanFreqs));
		return reportData;
	}

	@Override
	public ReportData getObwResult(ReportData reportData) {
		List<WlanObw> wlanObws = wlanResultDataService.selectObwByInfoId(reportData.getInfoId());
		reportData.setWlanObwMap(DataHandler.toWlanFormatMap(wlanObws));
		return reportData;
	}

	@Override
	public ReportData getCftResult(ReportData reportData) {
		List<WlanCft> wlanCfts = wlanResultDataService.selectCftByInfoId(reportData.getInfoId());
		reportData.setWlanCftMap(DataHandler.toWlanFormatMap(wlanCfts));
		return reportData;
	}

	@Override
	public ReportData getSeResult(ReportData reportData) {
		List<WlanSe> wlanSes = wlanResultDataService.selectSeByInfoId(reportData.getInfoId());
		reportData.setWlanSeMap(DataHandler.toWlanSeMap(wlanSes,Arrays.asList("model", "ant", "rate", "count", "band", "freq")));
		reportData.setWlanSePictureMap(DataHandler.toWlanSeMap(wlanSes,Arrays.asList( "count", "model", "ant", "rate", "freq","band")));
		return reportData;
	}

	@Override
	public ReportData getTpResult(ReportData reportData) {
		List<WlanPower> wlanTps = wlanResultDataService.selectTpByInfoId(reportData.getInfoId());
		reportData.setWlanTpMap(DataHandler.toWlanFormatMap(wlanTps));
		return reportData;
	}

	@Override
	public ReportData getMpResult(ReportData reportData) {
		List<WlanMaxpower> wlanMps = wlanResultDataService.selectMpByInfoId(reportData.getInfoId());
		reportData.setWlanMpMap(DataHandler.toWlanFormatMap(wlanMps));
		return reportData;
	}
	
}
