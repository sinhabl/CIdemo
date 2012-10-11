package com.common.dao;

import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.support.SessionStatus;

import com.common.model.CreditCards;
import com.common.model.UserProfile;

public interface UserServiceDAO {

	public List<UserProfile> getUsers();
	
	void addUser(UserProfile profile); 
	
	public UserProfile findById(int id);
	
	public void addUserCrediCardDetails(int id, CreditCards creditCards);

	public void deleteUser(int id);
	
	public UserProfile showCreditInfo(int id);
}
