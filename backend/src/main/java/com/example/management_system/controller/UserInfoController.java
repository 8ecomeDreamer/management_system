package com.example.management_system.controller;

import com.example.management_system.mapper.UserMapper;
import com.example.management_system.model.domain.User;
import com.example.management_system.model.domain.request.UserInfoRequest;
import com.example.management_system.service.UserInfoService;
import com.example.management_system.utils.MapperUtils;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/userInfo")
public class UserInfoController {

    @Resource
    UserInfoService userInfoService;

    @Resource
    UserMapper userMapper;

    @PostMapping("/getInfo")
    public List<User> getInfo(@RequestBody UserInfoRequest userInfoRequest){
//        判断id是否不为空 且 该用户为管理员
        Integer id = userInfoRequest.getId();
        if(id == null){
//            这里应该抛出异常
            return null;
        }
//        后期可优化为根据条件返回对应的数据
        return userInfoService.getInfo(userInfoRequest);
    }


    @PostMapping("/addUserInfo")
    public User addUserInfo(UserInfoService userInfoService){
        return userInfoService.addUserInfo(userInfoService);
    }


    @PostMapping("/saveUserInfo")
    public User saveUserInfo(UserInfoService userInfoService){
        return userInfoService.saveUserInfo(userInfoService);
    }

    @DeleteMapping("/deleteUserInfo")
    public User deleteUserInfo(UserInfoService userInfoService){
        return userInfoService.deleteUserInfo(userInfoService);
    }

}
