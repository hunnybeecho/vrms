package com.vrms.app.service.impl;

import com.vrms.app.dao.AdministratorsDao;
import com.vrms.app.dao.UsersDao;
import com.vrms.app.entity.Administrators;
import com.vrms.app.service.AdministratorsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class AdministratorsImpl implements AdministratorsService {
    @Resource
    private AdministratorsDao administratorsDao;

    @Override
    public List<Administrators> listPage(int page, int size, String username) {
        return administratorsDao.listPage((page - 1) * size, size, username);
    }

    @Override
    public int count(String username) {
        return administratorsDao.count(username);
    }

    @Override
    public boolean save(Administrators administrators) {
        administrators.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return administratorsDao.save(administrators) > 0;
    }

    @Override
    public boolean update(Administrators administrators) {
        administrators.setMtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return administratorsDao.update(administrators) > 0;
    }

    @Override
    public boolean remove(Integer aid) {
        return administratorsDao.remove(aid) > 0;
    }

    @Override
    public boolean changeStats(Administrators administrators) {
        return administratorsDao.changeStats(administrators) > 0;
    }

    @Override
    public Administrators login(String username) {
        return administratorsDao.login(username);
    }
}
