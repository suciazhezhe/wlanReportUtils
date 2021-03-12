package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtSe;
import java.util.List;

public interface BtSeMapper {
    int deleteByPrimaryKey(String btSeId);

    int insert(BtSe record);

    BtSe selectByPrimaryKey(String btSeId);

    List<BtSe> selectAll();

    int updateByPrimaryKey(BtSe record);
}