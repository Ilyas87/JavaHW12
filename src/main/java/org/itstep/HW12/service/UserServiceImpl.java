package org.itstep.HW12.service;

import org.itstep.HW12.entity.User;

public class UserServiceImpl implements UserService {

    private User user;

    public UserServiceImpl() {
        this.user = new User();
    }

    @Override
    public User step1(String name, String surname, Integer age) {
        user.setName(name);
        user.setSurname(surname);
        user.setAge(age);
        return user;
    }

    @Override
    public User step2(String city, String address, String phone) {
        user.setCity(city);
        user.setAddress(address);
        user.setPhone(phone);
        return user;
    }

    @Override
    public User step3(String university, String faculty, String group) {
        user.setUniversity(university);
        user.setFaculty(faculty);
        user.setGroup(group);
        return user;
    }
}
