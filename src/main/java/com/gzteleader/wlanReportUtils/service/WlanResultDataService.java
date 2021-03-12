package com.gzteleader.wlanReportUtils.service;

import java.util.List;

import com.gzteleader.wlanReportUtils.entity.WlanCft;
import com.gzteleader.wlanReportUtils.entity.WlanEirp;
import com.gzteleader.wlanReportUtils.entity.WlanFreq;
import com.gzteleader.wlanReportUtils.entity.WlanMaxpow;
import com.gzteleader.wlanReportUtils.entity.WlanMaxpower;
import com.gzteleader.wlanReportUtils.entity.WlanObw;
import com.gzteleader.wlanReportUtils.entity.WlanOob;
import com.gzteleader.wlanReportUtils.entity.WlanPower;
import com.gzteleader.wlanReportUtils.entity.WlanSe;

public interface WlanResultDataService {
	
	List<WlanEirp> selectEirpByInfoId(String infoId);
	
	List<WlanMaxpow> selectMaxpowByInfoId(String infoId);
	
	List<WlanOob> selectOobByInfoId(String infoId);
	
	List<WlanFreq> selectFreqByInfoId(String infoId);
	
	List<WlanObw> selectObwByInfoId(String infoId);
	
	List<WlanCft> selectCftByInfoId(String infoId);
	
	List<WlanSe> selectSeByInfoId(String infoId);
	
	List<WlanPower> selectTpByInfoId(String infoId);
	
	List<WlanMaxpower> selectMpByInfoId(String infoId);

}
