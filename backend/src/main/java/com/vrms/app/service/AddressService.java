package com.vrms.app.service;

import com.vrms.app.entity.Address;

import java.util.List;

public interface AddressService {
    List<Address> listPage(int page, int size, String address);

    int count(String address);

    boolean save(Address address);

    boolean update(Address address);

    boolean remove(int addid);

    List<Address> list();
}
