package com.gzteleader.wlanReportUtils.dao;

import java.util.List;

import com.gzteleader.wlanReportUtils.entity.WlanOob;

public interface WlanOobMapper {
    int deleteByPrimaryKey(String wlanOobId);

    int insert(WlanOob record);

    WlanOob selectByPrimaryKey(String wlanOobId);

    List<WlanOob> selectAll();

    int updateByPrimaryKey(WlanOob record);
    
    List<WlanOob> selectByInfoId(String infoId);
}