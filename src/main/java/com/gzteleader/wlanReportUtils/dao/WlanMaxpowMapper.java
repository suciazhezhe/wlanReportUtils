package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanMaxpow;
import java.util.List;

public interface WlanMaxpowMapper {
    int deleteByPrimaryKey(String wlanMaxpowId);

    int insert(WlanMaxpow record);

    WlanMaxpow selectByPrimaryKey(String wlanMaxpowId);

    List<WlanMaxpow> selectAll();

    int updateByPrimaryKey(WlanMaxpow record);
    
    List<WlanMaxpow> selectByInfoId(String infoId);
}