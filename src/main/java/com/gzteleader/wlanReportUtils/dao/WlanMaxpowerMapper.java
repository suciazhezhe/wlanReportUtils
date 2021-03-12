package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanMaxpower;
import java.util.List;

public interface WlanMaxpowerMapper {
    int deleteByPrimaryKey(String wlanMaxpowerId);

    int insert(WlanMaxpower record);

    WlanMaxpower selectByPrimaryKey(String wlanMaxpowerId);

    List<WlanMaxpower> selectAll();

    int updateByPrimaryKey(WlanMaxpower record);
    
    List<WlanMaxpower> selectByInfoId(String infoId);
}