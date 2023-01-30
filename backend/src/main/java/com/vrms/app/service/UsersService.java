package com.vrms.app.service;

import com.vrms.app.entity.Users;

import java.util.List;

public interface UsersService {
    List<Users> listPage(int page, int size, String username);

    int count(String username);

    boolean save(Users users);

    boolean update(Users users);

    boolean remove(int uid);

    boolean changeStats(Users users);

    List<Users> list();
}
