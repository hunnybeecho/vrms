package com.vrms.app.service;

import com.vrms.app.entity.Vaccines;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VaccinesService {
    List<Vaccines> listPage(int page, int size, String avcname);

    int count(String avcname);

    boolean save(Vaccines vaccines);

    boolean update(Vaccines vaccines);

    boolean remove(int avcid);

    List<Vaccines> list();
}
