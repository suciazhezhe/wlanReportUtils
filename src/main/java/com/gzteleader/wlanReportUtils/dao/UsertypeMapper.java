package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.Usertype;
import java.util.List;

public interface UsertypeMapper {
    int deleteByPrimaryKey(String utId);

    int insert(Usertype record);

    Usertype selectByPrimaryKey(String utId);

    List<Usertype> selectAll();

    int updateByPrimaryKey(Usertype record);
}