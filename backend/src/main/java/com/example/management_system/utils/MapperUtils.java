package com.example.management_system.utils;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

@Component
public class MapperUtils {

    /**
     * @param userRole 管理员权限
     * @return  用户是否为管理员
     */
    public static Boolean isAdmin(Integer userRole){
//        userRole - 0 普通用户  userRole - 1 管理员
        return userRole == 1;
    }
}
