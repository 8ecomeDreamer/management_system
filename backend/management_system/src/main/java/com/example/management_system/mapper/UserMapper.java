package com.example.management_system.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.management_system.model.domain.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
