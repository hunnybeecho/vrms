package com.vrms.app.dao;

import com.vrms.app.entity.Logs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LogsDao {
    List<Logs> listPage(@Param("page") int page, @Param("size") int size);

    int count();

    int save(Logs logs);
}
