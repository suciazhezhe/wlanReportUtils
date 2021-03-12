package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanObw;
import java.util.List;

public interface WlanObwMapper {
    int deleteByPrimaryKey(String wlanObwId);

    int insert(WlanObw record);

    WlanObw selectByPrimaryKey(String wlanObwId);

    List<WlanObw> selectAll();

    int updateByPrimaryKey(WlanObw record);
    
    List<WlanObw> selectByInfoId(String infoId);
}