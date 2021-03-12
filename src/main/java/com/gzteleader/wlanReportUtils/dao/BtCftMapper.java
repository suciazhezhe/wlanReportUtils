package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtCft;
import java.util.List;

public interface BtCftMapper {
    int deleteByPrimaryKey(String btCftId);

    int insert(BtCft record);

    BtCft selectByPrimaryKey(String btCftId);

    List<BtCft> selectAll();

    int updateByPrimaryKey(BtCft record);
}