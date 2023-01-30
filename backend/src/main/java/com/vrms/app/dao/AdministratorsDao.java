package com.vrms.app.dao;

import com.vrms.app.entity.Administrators;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdministratorsDao {
    List<Administrators> listPage(@Param("page") int page, @Param("size") int size, @Param("username") String username);

    int count(@Param("username") String username);

    int save(Administrators administrators);

    int update(Administrators administrators);

    int remove(@Param("aid") Integer aid);

    int changeStats(Administrators administrators);

    Administrators login(@Param("username") String username);
}
