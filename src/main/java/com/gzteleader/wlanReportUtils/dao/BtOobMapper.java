package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtOob;
import java.util.List;

public interface BtOobMapper {
    int deleteByPrimaryKey(String btOobId);

    int insert(BtOob record);

    BtOob selectByPrimaryKey(String btOobId);

    List<BtOob> selectAll();

    int updateByPrimaryKey(BtOob record);
}