package com.vrms.app.service.impl;

import com.vrms.app.dao.LogsDao;
import com.vrms.app.entity.Logs;
import com.vrms.app.service.LogsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LogsImpl implements LogsService {
    @Resource
    private LogsDao logsDao;

    @Override
    public List<Logs> listPage(int page, int size) {
        return logsDao.listPage((page - 1) * size, size);
    }

    @Override
    public int count() {
        return logsDao.count();
    }

    @Override
    public boolean save(Logs logs) {
        return logsDao.save(logs) > 0;
    }
}
