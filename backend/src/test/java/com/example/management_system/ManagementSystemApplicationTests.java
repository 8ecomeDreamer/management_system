package com.example.management_system;

import com.example.management_system.mapper.UserMapper;
import com.example.management_system.model.domain.User;
import com.example.management_system.service.UserService;
import jakarta.annotation.Resource;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class ManagementSystemApplicationTests {

//    @Resource
//    UserMapper userMapper;
    @Resource
    UserService userService;

    @Test
    void contextLoads() {
//        System.out.println("---------- select all data ----------");
//        List<User> userList = userMapper.selectList(null);
//        userList.forEach(System.out::println);
    }

    @Test
    void testUserRegister(){
        System.out.println("---------- testUserRegister ----------");
        String userAccount = "coderWorldTest6";
        String userPassword = "coderWorldPw";
        String checkPassword = "coderWorldPw";
//        System.out.println("---------- 测试参数是否为空 ----------");
//        long result = userService.userRegister(userAccount, userPassword, checkPassword);
//        Assertions.assertEquals(-1, result);
//        System.out.println("---------- 测试参数长度限制 ----------");
//        userPassword = "co";
//        result = userService.userRegister(userAccount, userPassword, checkPassword);
//        Assertions.assertEquals(-2, result);
//        System.out.println("---------- 测试密码是否相同 ----------");
//        userPassword = "cod";
//        checkPassword = "coderWorldCpw";
//        result = userService.userRegister(userAccount, userPassword, checkPassword);
//        Assertions.assertEquals(-3, result);
//        System.out.println("---------- 测试密码是否包含特殊字符 ----------");
//        userPassword = "co d";
//        checkPassword = "coderWor ldCpw";
//        result = userService.userRegister(userAccount, userPassword, checkPassword);
//        Assertions.assertEquals(-4, result);
        System.out.println("---------- 正常数据 ----------");
        long result = userService.userRegister(userAccount, userPassword, checkPassword);
//        System.out.println(result);
        Assertions.assertTrue(result > 0);
    }

}
