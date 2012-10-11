package com.common.dao.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.common.dao.UserServiceDAO;
import com.common.model.CreditCards;
import com.common.model.UserProfile;

@Repository("userServiceDao")
@Transactional
public class UserServiceDAOImpl implements UserServiceDAO {
	
	Log logger = LogFactory.getLog(UserServiceDAOImpl.class);

	@Autowired
	SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<UserProfile> getUsers() {
		Session session = getSession();
		logger.info("gettting all userdetail");
		List<UserProfile> user = session.createQuery("from UserProfile").list();
		return user;
	}

	private Session getSession() {
		Session session = null;
		session = sessionFactory.openSession();
		return session;
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public void addUser(UserProfile profile) {
		Session session = getSession();
		logger.info("Adding the new User");
		session.save(profile);
		session.flush();
	}

	@Override
	public UserProfile findById(int id) {
		Session session = getSession();
		logger.info("Getting the Existing user based on ID");
		return (UserProfile) session.get(UserProfile.class, id);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void addUserCrediCardDetails(int id, CreditCards creditCards) {
		Session session = getSession();
		logger.info("Saving the Credit Card information");
		session.save(creditCards);
		
		UserProfile existinfProfile = (UserProfile) session.get(UserProfile.class, id);
		
		logger.info("Saving the Credit Card information for this User Id:: " + id);
		existinfProfile.getCreditCards().add(creditCards);
		
		session.save(existinfProfile);
		
		session.flush();
		
	}

	@Override
	public void deleteUser(int id) {
		Session session = getSession();
		logger.info("Deleting the User:: " + id);
		Query q = session.createQuery("from UserProfile where id = :id ");
		q.setParameter("id", id);
		UserProfile userProfile = (UserProfile)q.list().get(0);
		session.delete(userProfile);
		session.flush();
	}

	@Override
	public UserProfile showCreditInfo(int id) {
		Session session = getSession();
		return (UserProfile) session.get(UserProfile.class, id);
		
	}
	
	
	
}
