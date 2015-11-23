package com.petease.app.service;

import java.util.Calendar;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.petease.app.common.Formatter;
import com.petease.app.dao.QADao;
import com.petease.app.dao.UserDao;
import com.petease.app.domain.QA;
import com.petease.app.domain.User;


@Service("AuthenticationServiceImpl")
@Transactional
public class AuthenticationServiceImpl implements AuthenticationService {
	//Dependency injection
	@Autowired
	@Qualifier("UserDaoJdbcImpl")
	private UserDao userDao;
	
	//Setter
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public void writeUserInfo(User user) {
		user.setBirthday(user.getBirthdayYear() + "-" + user.getBirthdayMonth() + "-" + user.getBirthdayDay());
		System.out.println("birthday="+user.getBirthday());
		userDao.insertUser(user);
	}
	
	public User readUserInfoById(String userId) {
		return userDao.selectUserById(userId);
	}
	
}