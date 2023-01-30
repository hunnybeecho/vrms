package com.vrms.app.service.impl;

import com.vrms.app.dao.UsersDao;
import com.vrms.app.entity.Users;
import com.vrms.app.service.UsersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class UsersImpl implements UsersService {
    @Resource
    private UsersDao usersDao;
    @Override
    public List<Users> listPage(int page, int size, String username) {
        return usersDao.listPage((page - 1) * size, size, username);
    }

    @Override
    public int count(String username) {
        return usersDao.count(username);
    }

    @Override
    public boolean save(Users users) {
        users.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return usersDao.save(users) > 0;
    }

    @Override
    public boolean update(Users users) {
        users.setMtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return usersDao.update(users) > 0;
    }

    @Override
    public boolean remove(int uid) {
        return usersDao.remove(uid) > 0;
    }

    @Override
    public boolean changeStats(Users users) {
        return usersDao.changeStats(users) > 0;
    }

    @Override
    public List<Users> list() {
        return usersDao.list();
    }
}
