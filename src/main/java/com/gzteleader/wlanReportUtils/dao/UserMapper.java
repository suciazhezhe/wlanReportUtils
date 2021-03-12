package com.gzteleader.wlanReportUtils.dao;

import com.gzteleader.wlanReportUtils.entity.User;
import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String uId);

    int insert(User record);

    User selectByPrimaryKey(String uId);

    List<User> selectAll();

    int updateByPrimaryKey(User record);
}