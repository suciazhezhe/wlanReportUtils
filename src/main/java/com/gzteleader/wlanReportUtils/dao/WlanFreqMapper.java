package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanFreq;
import java.util.List;

public interface WlanFreqMapper {
    int deleteByPrimaryKey(String wlanFreqId);

    int insert(WlanFreq record);

    WlanFreq selectByPrimaryKey(String wlanFreqId);

    List<WlanFreq> selectAll();

    int updateByPrimaryKey(WlanFreq record);
    
    List<WlanFreq> selectByInfoId(String infoId);
}