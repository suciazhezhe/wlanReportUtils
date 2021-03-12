package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.WlanEirp;
import java.util.List;

public interface WlanEirpMapper {
    int deleteByPrimaryKey(String wlanEirpId);

    int insert(WlanEirp record);

    WlanEirp selectByPrimaryKey(String wlanEirpId);

    List<WlanEirp> selectAll();
    
    List<WlanEirp> selectByInfoId(String infoId);

    int updateByPrimaryKey(WlanEirp record);
}