package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtFreq;
import java.util.List;

public interface BtFreqMapper {
    int deleteByPrimaryKey(String btFreqId);

    int insert(BtFreq record);

    BtFreq selectByPrimaryKey(String btFreqId);

    List<BtFreq> selectAll();

    int updateByPrimaryKey(BtFreq record);
}