package com.vrms.app.service;

import com.vrms.app.entity.Appointment;

import java.util.List;

public interface AppointmentService {
    List<Appointment> listPage(int page, int size, String username);

    int count(String username);

    boolean save(Appointment appointment);

    boolean changeStats(Appointment appointment);
}
