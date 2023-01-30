package com.vrms.app.service;

import com.vrms.app.entity.Administrators;
import java.util.List;

public interface AdministratorsService {
    List<Administrators> listPage(int page, int size, String username);

    int count(String username);

    boolean save(Administrators administrators);

    boolean update(Administrators administrators);

    boolean remove(Integer aid);

    boolean changeStats(Administrators administrators);

    Administrators login(String username);
}