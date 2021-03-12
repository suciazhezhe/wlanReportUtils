package com.gzteleader.wlanReportUtils.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gzteleader.wlanReportUtils.dao.WlanCftMapper;
import com.gzteleader.wlanReportUtils.dao.WlanEirpMapper;
import com.gzteleader.wlanReportUtils.dao.WlanFreqMapper;
import com.gzteleader.wlanReportUtils.dao.WlanMaxpowMapper;
import com.gzteleader.wlanReportUtils.dao.WlanMaxpowerMapper;
import com.gzteleader.wlanReportUtils.dao.WlanObwMapper;
import com.gzteleader.wlanReportUtils.dao.WlanOobMapper;
import com.gzteleader.wlanReportUtils.dao.WlanPowerMapper;
import com.gzteleader.wlanReportUtils.dao.WlanSeMapper;
import com.gzteleader.wlanReportUtils.entity.WlanCft;
import com.gzteleader.wlanReportUtils.entity.WlanEirp;
import com.gzteleader.wlanReportUtils.entity.WlanFreq;
import com.gzteleader.wlanReportUtils.entity.WlanMaxpow;
import com.gzteleader.wlanReportUtils.entity.WlanMaxpower;
import com.gzteleader.wlanReportUtils.entity.WlanObw;
import com.gzteleader.wlanReportUtils.entity.WlanOob;
import com.gzteleader.wlanReportUtils.entity.WlanPower;
import com.gzteleader.wlanReportUtils.entity.WlanSe;
import com.gzteleader.wlanReportUtils.service.WlanResultDataService;

@Service
public class WlanResultDataServiceImpl implements WlanResultDataService{
	@Autowired
	WlanEirpMapper wlanEirpMapper;
	@Autowired
	WlanMaxpowMapper wlanMaxpowMapper;
	@Autowired
	WlanOobMapper wlanOobMapper;
	@Autowired
	WlanFreqMapper wlanFreqMapper;
	@Autowired
	WlanObwMapper wlanObwMapper;
	@Autowired
	WlanCftMapper wlanCftMapper;
	@Autowired
	WlanSeMapper wlanSeMapper;
	@Autowired
	WlanPowerMapper wlanPowerMapper;
	@Autowired
	WlanMaxpowerMapper wlanMaxpowerMapper;

	@Override
	public List<WlanEirp> selectEirpByInfoId(String infoId) {
		return wlanEirpMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanMaxpow> selectMaxpowByInfoId(String infoId) {
		return wlanMaxpowMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanOob> selectOobByInfoId(String infoId) {
		return wlanOobMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanFreq> selectFreqByInfoId(String infoId) {
		return wlanFreqMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanObw> selectObwByInfoId(String infoId) {
		return wlanObwMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanCft> selectCftByInfoId(String infoId) {
		return wlanCftMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanSe> selectSeByInfoId(String infoId) {
		return wlanSeMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanPower> selectTpByInfoId(String infoId) {
		return wlanPowerMapper.selectByInfoId(infoId);
	}

	@Override
	public List<WlanMaxpower> selectMpByInfoId(String infoId) {
		return wlanMaxpowerMapper.selectByInfoId(infoId);
	}

}
