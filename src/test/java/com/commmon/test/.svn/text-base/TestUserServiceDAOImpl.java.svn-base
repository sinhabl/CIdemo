package com.commmon.test;

import static org.junit.Assert.*;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.common.dao.UserServiceDAO;
import com.common.model.UserProfile;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:mvc-dispatcher-servlet.xml"})
public class TestUserServiceDAOImpl {

	
	Log logger = LogFactory.getLog(TestUserServiceDAOImpl.class);
	
	
	@Autowired
	UserServiceDAO userServiceDao;
	
	@Test
	public void testFindUserByIdwhenUserNotExist()
	{
		UserProfile profile = userServiceDao.findById(12);
		assertEquals("Result", null ,profile);
	}
	
	//@Test
	public void testFindUserByIdwhenUserExist()
	{
		UserProfile profile = userServiceDao.findById(36);
		assertEquals("Result", "pradeep" ,profile.getFirstName());
	}
	
	/*@Test
	public void testAddUser()
	{
		UserProfile profile = new UserProfile();
		profile.setFirstName("Mithun");
		profile.setLastName("gooty");
		profile.setAge("28");
		userServiceDao.addUser(profile);
		assertTrue(true);
	}*/
	
	@Test
	public void testGetUsers()
	{
		assertNotSame("Size of the array is equal", 3, userServiceDao.getUsers().size());
	}

	
}
