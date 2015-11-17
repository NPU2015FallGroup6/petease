package com.petease.app.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.petease.app.common.Formatter;
import com.petease.app.dao.QADao;
import com.petease.app.domain.QA;


@Service("QAServiceImpl")
@Transactional
public class QAServiceImpl implements QAService {
	//Dependency injection
	@Autowired
	@Qualifier("QADaoJdbcImpl")
	private QADao qaDao;
	
	//Setter
	public void setQaDao(QADao qaDao) {
		this.qaDao = qaDao;
	}
	
	public void writeQuestion(QA qa) {
		qaDao.insertQuestion(qa);
	}
	
}