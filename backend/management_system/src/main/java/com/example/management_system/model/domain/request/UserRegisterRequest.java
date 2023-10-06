package com.example.management_system.model.domain.request;

import lombok.Data;
import org.apache.ibatis.javassist.SerialVersionUID;

import java.io.Serializable;

@Data
public class UserRegisterRequest implements Serializable {

    private static final long SerialVersionUID = 3191241716373120793L;

    private String userAccount;
    private String userPassword;
    private String checkPassword;
}
