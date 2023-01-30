package com.vrms.app.dao;

import com.vrms.app.entity.Vaccines;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VaccinesDao {
    List<Vaccines> listPage(@Param("page") int page, @Param("size") int size, @Param("avcname") String avcname);

    int count(@Param("avcname") String avcname);

    int save(Vaccines vaccines);

    int update(Vaccines vaccines);

    int remove(int avcid);

    List<Vaccines> list();
}
