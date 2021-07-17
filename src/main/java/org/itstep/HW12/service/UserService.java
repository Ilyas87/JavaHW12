package org.itstep.HW12.service;

import org.itstep.HW12.entity.User;

public interface UserService {

    User step1(String name, String surname, Integer age);

    User step2(String name, String address, String phone);

    User step3(String university, String faculty, String group);
}
