package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanPower;
import java.util.List;

public interface WlanPowerMapper {
    int deleteByPrimaryKey(String wlanPowerId);

    int insert(WlanPower record);

    WlanPower selectByPrimaryKey(String wlanPowerId);

    List<WlanPower> selectAll();

    int updateByPrimaryKey(WlanPower record);
    
    List<WlanPower> selectByInfoId(String infoId);
}