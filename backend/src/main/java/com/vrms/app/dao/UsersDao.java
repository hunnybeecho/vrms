package com.vrms.app.dao;

import com.vrms.app.entity.Administrators;
import com.vrms.app.entity.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsersDao {

    List<Users> listPage(@Param("page") int page, @Param("size") int size, @Param("username") String username);

    int count(@Param("username") String username);

    int save(Users users);

    int update(Users users);

    int remove(@Param("uid") int uid);

    int changeStats(Users users);

    List<Users> list();
}
