package com.common.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.dao.UserServiceDAO;
import com.common.model.CreditCards;
import com.common.model.UserProfile;
import com.common.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserServiceDAO userServiceDao;
	
	@Override
	public List<UserProfile> getUsers() {
		return userServiceDao.getUsers();
	}

	@Override
	public void addUser(UserProfile profile) {
		userServiceDao.addUser(profile);
	}

	@Override
	public UserProfile findById(int id) {
		return userServiceDao.findById(id);
	}

	@Override
	public void addUserCrediCardDetails(int id, CreditCards creditCards) {
		userServiceDao.addUserCrediCardDetails(id, creditCards);
	}

	@Override
	public void deleteUser(int id) {
		userServiceDao.deleteUser(id);
	}

	@Override
	public UserProfile showCreditInfo(int id) {
		return userServiceDao.showCreditInfo(id);
	}
	
	

}
