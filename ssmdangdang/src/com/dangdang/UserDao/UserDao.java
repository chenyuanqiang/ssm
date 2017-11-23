package com.dangdang.UserDao;

import java.util.Map;

import com.dangdang.entery.User;

public interface UserDao {
void add(User u);
User addcheck(User u);
User login(User u);
public int insertBacth(Map map);
}
