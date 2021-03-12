package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.BtEirp;
import java.util.List;

public interface BtEirpMapper {
    int deleteByPrimaryKey(String btEirpId);

    int insert(BtEirp record);

    BtEirp selectByPrimaryKey(String btEirpId);

    List<BtEirp> selectAll();

    int updateByPrimaryKey(BtEirp record);
}