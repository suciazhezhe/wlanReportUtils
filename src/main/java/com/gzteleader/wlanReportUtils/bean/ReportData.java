package com.gzteleader.wlanReportUtils.bean;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import com.gzteleader.wlanReportUtils.entity.WlanSe;

public class ReportData {

	
	public static String BASE_INFO_DOCX = "wlanTemplate/baseInfo.docx";
	
	public static String INSTRUMENT_DOCX = "wlanTemplate/instrument.docx";
	
	public static String PICTURE_DOCX = "wlanTemplate/picture.docx";
	
	public static String NOT_FOUND_PIC = "wlanTemplate/404.png";
	
	private String templateDocx;
	
	private String infoId;
	
	private String infoEt;
	
	private Map<String, String> baseInfo = new HashMap<String, String>();
	
	private Map<String, String> testItems = new HashMap<String, String>();
	
	private Map<String,Integer> seLimits;
	
	//用于排序，按model,rate,ant,count,freq
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanEirpMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanMaxpowMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanOobMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanFreqMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanObwMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanCftMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanTpMap;
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanMpMap;
    //排序：          model          ant            rate           count          band           freq
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,WlanSe>>>>>> wlanSeMap;
    //排序：          count          model          ant            rate           freq           band
	private TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,WlanSe>>>>>> wlanSePictureMap;

	public ReportData(String infoId, String infoEt) {
		super();
		this.infoId = infoId;
		this.infoEt = infoEt;
	}

	public String getInfoEt() {
		return infoEt;
	}

	public void setInfoEt(String infoEt) {
		this.infoEt = infoEt;
	}

	public String getInfoId() {
		return infoId;
	}

	public void setInfoId(String infoId) {
		this.infoId = infoId;
	}

	public Map<String, String> getBaseInfo() {
		return baseInfo;
	}

	public void setBaseInfo(Map<String, String> baseInfo) {
		this.baseInfo = baseInfo;
	}

	public Map<String, String> getTestItems() {
		return testItems;
	}

	public void setTestItems(Map<String, String> testItems) {
		this.testItems = testItems;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanEirpMap() {
		return wlanEirpMap;
	}

	public void setWlanEirpMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanEirpMap) {
		this.wlanEirpMap = wlanEirpMap;
	}

	public String getTemplateDocx() {
		return templateDocx;
	}

	public void setTemplateDocx(String templateDocx) {
		this.templateDocx = templateDocx;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanMaxpowMap() {
		return wlanMaxpowMap;
	}

	public void setWlanMaxpowMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanMaxpowMap) {
		this.wlanMaxpowMap = wlanMaxpowMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanOobMap() {
		return wlanOobMap;
	}

	public void setWlanOobMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanOobMap) {
		this.wlanOobMap = wlanOobMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanFreqMap() {
		return wlanFreqMap;
	}

	public void setWlanFreqMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanFreqMap) {
		this.wlanFreqMap = wlanFreqMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanObwMap() {
		return wlanObwMap;
	}

	public void setWlanObwMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanObwMap) {
		this.wlanObwMap = wlanObwMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanCftMap() {
		return wlanCftMap;
	}

	public void setWlanCftMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanCftMap) {
		this.wlanCftMap = wlanCftMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanTpMap() {
		return wlanTpMap;
	}

	public void setWlanTpMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanTpMap) {
		this.wlanTpMap = wlanTpMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> getWlanMpMap() {
		return wlanMpMap;
	}

	public void setWlanMpMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanMpMap) {
		this.wlanMpMap = wlanMpMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> getWlanSeMap() {
		return wlanSeMap;
	}

	public void setWlanSeMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> wlanSeMap) {
		this.wlanSeMap = wlanSeMap;
	}

	public TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> getWlanSePictureMap() {
		return wlanSePictureMap;
	}

	public void setWlanSePictureMap(
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> wlanSePictureMap) {
		this.wlanSePictureMap = wlanSePictureMap;
	}

	public Map<String, Integer> getSeLimits() {
		return seLimits;
	}

	public void setSeLimits(Map<String, Integer> seLimits) {
		this.seLimits = seLimits;
	}
}
