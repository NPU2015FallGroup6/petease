package com.petease.app.test.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.petease.app.dao.QADao;
import com.petease.app.domain.QA;
import com.petease.app.domain.User;

@ContextConfiguration("classpath:petease-test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class QADaoTest {
	@Autowired
	@Qualifier("QADaoJdbcImpl")
	private QADao qaDao;
	private QA qaLookup;
	
	@Before
	public void init()
	{
		qaLookup=new QA();
		qaLookup.setTopic("dog");
		qaLookup.setQuestion("question1");
		qaLookup.setAnswer("answer1");
		
		User asker = new User();
		User admin = new User();
		asker.setUserId("user@gmail.com");
		admin.setUserId("admin@petease.com");
		qaLookup.setAsker(asker);
		qaLookup.setAdmin(admin);
	}
	
	@Test
	public void testInsertQuestion()
	{
		QA qa=new QA();
		QA qaResult;

		qa=new QA();
		qa.setTopic("dog");
		qa.setQuestion("question1");
		qa.setAnswer("answer1");
		
		User asker = new User();
		User admin = new User();
		asker.setUserId("user@gmail.com");
		admin.setUserId("admin@petease.com");
		qa.setAsker(asker);
		qa.setAdmin(admin);
		
		qaDao.insertQuestion(qa);
		assertTrue(qa.getQaId()>0);
		
	}
}
