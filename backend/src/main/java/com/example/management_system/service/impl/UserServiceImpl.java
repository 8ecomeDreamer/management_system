package com.example.management_system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.management_system.mapper.UserMapper;
import com.example.management_system.model.domain.User;
import com.example.management_system.service.UserService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.example.management_system.constant.UserConstant.USER_LOGIN_STATE;

@Service
@Slf4j
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Resource
    private UserMapper userMapper;

    private static final String SALT = "coderWorld";

    @Override
    public long userRegister(String userAccount, String userPassword, String checkPassword) {
        // 1.校验 校验规则： (参数是否为空,参数长度限制,密码是否相同，密码是否包含特殊字符 等等)
        if (StringUtils.isAllBlank(userAccount, userPassword, checkPassword)) {
            return -1;
        }
        if (userPassword.length() < 4 || checkPassword.length() < 4) {
            return -2;
        }
        // 密码和校验密码不相同
        if (!userPassword.equals(checkPassword)) {
            return -3;
        }
        // 账户不能包含特殊字符
        String validPattern = "[`~!@#$%^&*()+=|{}':;',\\\\[\\\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
        Matcher matcher = Pattern.compile(validPattern).matcher(userAccount);
        if (matcher.find()) {
            return -4;
        }
        // 账户不能重复
        // queryWrapper是mybatis-plus方法，作用是查询数据库对应列的值
        // count是mybatis-plus的值，作用是统计条数
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
//        System.out.println(queryWrapper);
        queryWrapper.eq("userAccount", userAccount);
        long count = userMapper.selectCount(queryWrapper);
        if (count > 0) {
            return -5;
        }
        // 2.加密
        String encryptPassword = DigestUtils.md5DigestAsHex((SALT + userPassword).getBytes());
        // 3.插入数据 存储到数据库中
        User user = new User();
        user.setUserAccount(userAccount);
        user.setUserPassword(encryptPassword);
        boolean saveResult = this.save(user);
        if (!saveResult) {
            return -6;
        }
        return user.getId();
    }


    @Override
    public User userLogin(String userAccount, String userPassword, HttpServletRequest httpServletRequest) {
        //1.先校验参数
        // 1.校验 校验规则： (参数是否为空,参数长度限制,账户是否存在 等等)
        if (StringUtils.isAllBlank(userAccount, userPassword)) {
            return null;
        }
        if (userPassword.length() < 4) {
            return null;
        }
        // 账户不能重复 queryWrapper是mybatis-plus方法，作用是查询数据库对应列的值 count是mybatis-plus的值，作用是统计条数
        String encryptPassword = DigestUtils.md5DigestAsHex((SALT + userPassword).getBytes());
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("userAccount", userAccount);
        queryWrapper.eq("userPassword", encryptPassword);
        User user = userMapper.selectOne(queryWrapper);
        //2.匹配密码
        if (user == null) {
            log.info("user login failed or not existed");
            return null;
        }
        //3.返回脱敏后的用户信息
        User safetyUser = new User();
        safetyUser.setUsername(user.getUsername());
        safetyUser.setId(user.getId());
        safetyUser.setUserAccount(user.getUserAccount());
        safetyUser.setAvatarUrl(user.getAvatarUrl());
        safetyUser.setGender(user.getGender());
        safetyUser.setPhone(user.getPhone());
        safetyUser.setEmail(user.getEmail());
        safetyUser.setUserStatus(0);
        safetyUser.setCreateTime(user.getCreateTime());
        //4.将登录态信息存储进session中
        httpServletRequest.getSession().setAttribute(USER_LOGIN_STATE, safetyUser);
        return safetyUser;
    }

}
