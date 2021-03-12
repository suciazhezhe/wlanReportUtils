package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanCft;
import java.util.List;

public interface WlanCftMapper {
    int deleteByPrimaryKey(String wlanCftId);

    int insert(WlanCft record);

    WlanCft selectByPrimaryKey(String wlanCftId);

    List<WlanCft> selectAll();

    int updateByPrimaryKey(WlanCft record);
    
    List<WlanCft> selectByInfoId(String infoId);
}