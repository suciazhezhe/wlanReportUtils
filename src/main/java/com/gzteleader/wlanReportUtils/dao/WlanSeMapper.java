package com.gzteleader.wlanReportUtils.dao;

import java.util.List;

import com.gzteleader.wlanReportUtils.entity.WlanSe;

public interface WlanSeMapper {
    int deleteByPrimaryKey(String wlanSeId);

    int insert(WlanSe record);

    WlanSe selectByPrimaryKey(String wlanSeId);

    List<WlanSe> selectAll();

    int updateByPrimaryKey(WlanSe record);
    
    List<WlanSe> selectByInfoId(String infoId);
}