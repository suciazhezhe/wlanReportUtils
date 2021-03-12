package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtObw;
import java.util.List;

public interface BtObwMapper {
    int deleteByPrimaryKey(String btObwId);

    int insert(BtObw record);

    BtObw selectByPrimaryKey(String btObwId);

    List<BtObw> selectAll();

    int updateByPrimaryKey(BtObw record);
}