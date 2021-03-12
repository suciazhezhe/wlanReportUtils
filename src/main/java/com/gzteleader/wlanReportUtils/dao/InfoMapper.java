package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.Info;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface InfoMapper {
    int deleteByPrimaryKey(String infoId);

    int insert(Info record);

    Info selectByPrimaryKey(String infoId);

    List<Info> selectAll();

    int updateByPrimaryKey(Info record);
    
    Info selectByInfoKey(@Param("infoModel")String infoModel,@Param("infoWb")String infoWb);

	List<Info> selectListByInfoKey(@Param("infoModel")String infoModel,@Param("infoWb")String infoWb,@Param("infoWbSign")String infoWbSign);
}