package com.vrms.app.service.impl;

import com.vrms.app.dao.AppointmentDao;
import com.vrms.app.entity.Appointment;
import com.vrms.app.service.AppointmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class AppointmentImpl implements AppointmentService {
    @Resource
    private AppointmentDao appointmentDao;

    @Override
    public List<Appointment> listPage(int page, int size, String username) {
        return appointmentDao.listPage((page - 1) * size, size, username);
    }

    @Override
    public int count(String username) {
        return appointmentDao.count(username);
    }

    @Override
    public boolean save(Appointment appointment) {
        appointment.setApptime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        appointment.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return appointmentDao.save(appointment) > 0;
    }

    @Override
    public boolean changeStats(Appointment appointment) {
        appointment.setMtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        if (appointment.getStats() == 0) {
            appointment.setStats(1);
        } else if (appointment.getStats() == 1) {
            appointment.setStats(0);
        }
        return appointmentDao.changeStats(appointment) > 0;
    }
}
