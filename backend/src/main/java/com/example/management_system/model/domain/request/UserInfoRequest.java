package com.example.management_system.model.domain.request;

import lombok.Data;

import java.io.Serializable;


@Data
public class UserInfoRequest implements Serializable {

    public static final long SerialVersionUID = 3191241716373120793L;

    private Integer id;
    private String userAccount;
    private String avatarUrl;
    private String gender;
    private String phone;
    private String email;
    private String createTime;
    private String updateTime;
    private Integer userRole;
}
