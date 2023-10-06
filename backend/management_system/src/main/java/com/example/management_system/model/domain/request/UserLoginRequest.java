package com.example.management_system.model.domain.request;

import lombok.Data;

import java.io.Serializable;


@Data
public class UserLoginRequest implements Serializable {

    private static final long SerialVersionUID = 3191241716373120793L;

    private String userAccount;
    private String userPassword;
}
