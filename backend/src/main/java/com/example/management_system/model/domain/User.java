package com.example.management_system.model.domain;

import lombok.Data;

@Data
public class User {
    private String username;
    private Integer id;
    private String userAccount;
    private String avatarUrl;
    private String gender;
    private String userPassword;
    private String phone;
    private String email;
    private Integer userStatus;
    private String createTime;
    private String updateTime;
    private Integer userRole;
}
