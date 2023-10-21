package com.example.management_system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.management_system.mapper.UserMapper;
import com.example.management_system.model.domain.User;
import com.example.management_system.model.domain.request.UserInfoRequest;
import com.example.management_system.service.UserInfoService;
import com.example.management_system.utils.MapperUtils;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
public class UserInfoServiceImpl extends ServiceImpl<UserMapper, User> implements UserInfoService {

        @Resource
        UserMapper userMapper;

        /**
         * description 获取用户信息
         * @param userInfoRequest 传递的表单信息
         * @return 返回对应条件的用户信息
         */
        @Override
        public List<User> getInfo(UserInfoRequest userInfoRequest) {
        //      判断id是否不为空 且 该用户为管理员
                Integer id = userInfoRequest.getId();
                if(id == null){
        //      这里应该抛出异常
                        return null;
                }
        //      查找用户的userRole
                User user = userMapper.selectById(id);
                if(!MapperUtils.isAdmin(user.getUserRole())){
        //      这里应该抛出异常
                        return null;
                }
                return userMapper.selectList(null);
        }


        /**
         * 逻辑删除
         * @param userInfoService 需要删除的用户信息id
         * @return 返回删除结果
         */
        @Override
        public User deleteUserInfo(UserInfoService userInfoService) {
                return null;
        }

        /**
         * description  创建用户信息的接口
         * @param userInfoService 传递的表单信息
         * @return 返回创建结果
         */
        @Override
        public User addUserInfo(UserInfoService userInfoService) {
                return null;
        }

        /**
         * description  保存用户信息的接口
         * @param userInfoService 传递的表单信息
         * @return 返回保存结果
         */
        @Override
        public User saveUserInfo(UserInfoService userInfoService) {
                return null;
        }

}
