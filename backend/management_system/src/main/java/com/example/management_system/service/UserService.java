package com.example.management_system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.management_system.model.domain.User;
import jakarta.servlet.http.HttpServletRequest;

public interface UserService extends IService<User> {
    // 用户注册（参数为 用户名，密码，校验密码）
    /**
     * 用户注册
     *
     * @param userAccount   用户账户
     * @param userPassword  用户密码
     * @param checkPassword 校验密码
     * @return 新用户 id
     */
    long userRegister(String userAccount, String userPassword, String checkPassword);

    User userLogin(String userAccount, String userPassword, HttpServletRequest httpServletRequest);
}
