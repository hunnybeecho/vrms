package com.vrms.app.dao;

import com.vrms.app.entity.Appointment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppointmentDao {
    List<Appointment> listPage(@Param("page") int page, @Param("size") int size, @Param("username") String username);

    int count(@Param("username") String username);

    int save(Appointment appointment);

    int changeStats(Appointment appointment);
}
