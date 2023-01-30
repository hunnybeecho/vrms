package com.vrms.app.service.impl;

import com.vrms.app.dao.AddressDao;
import com.vrms.app.entity.Address;
import com.vrms.app.service.AddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class AddressImpl implements AddressService {
    @Resource
    private AddressDao addressDao;

    @Override
    public List<Address> listPage(int page, int size, String address) {
        return addressDao.listPage((page - 1) * size, size, address);
    }

    @Override
    public int count(String address) {
        return addressDao.count(address);
    }

    @Override
    public boolean save(Address address) {
        address.setCtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return addressDao.save(address) > 0;
    }

    @Override
    public boolean update(Address address) {
        address.setMtime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return addressDao.update(address) > 0;
    }

    @Override
    public boolean remove(int addid) {
        return addressDao.remove(addid) > 0;
    }

    @Override
    public List<Address> list() {
        return addressDao.list();
    }
}
