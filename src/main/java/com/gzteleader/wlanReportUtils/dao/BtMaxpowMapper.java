package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtMaxpow;
import java.util.List;

public interface BtMaxpowMapper {
    int deleteByPrimaryKey(String btMaxpowId);

    int insert(BtMaxpow record);

    BtMaxpow selectByPrimaryKey(String btMaxpowId);

    List<BtMaxpow> selectAll();

    int updateByPrimaryKey(BtMaxpow record);
}