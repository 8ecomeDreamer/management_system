package com.example.management_system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.management_system.model.domain.User;
import com.example.management_system.model.domain.request.UserInfoRequest;

import java.util.List;

public interface UserInfoService extends IService<User> {

    List<User> getInfo(UserInfoRequest userInfoRequest);

    User deleteUserInfo(UserInfoService userInfoService);

    User addUserInfo(UserInfoService userInfoService);

    User saveUserInfo(UserInfoService userInfoService);
}
