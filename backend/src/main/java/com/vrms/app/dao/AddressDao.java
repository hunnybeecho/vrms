package com.vrms.app.dao;

import com.vrms.app.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressDao {
    List<Address> listPage(@Param("page") int page, @Param("size") int size, @Param("address") String address);

    int count(@Param("address") String address);

    int save(Address address);

    int update(Address address);

    int remove(@Param("addid") int addid);

    List<Address> list();
}
