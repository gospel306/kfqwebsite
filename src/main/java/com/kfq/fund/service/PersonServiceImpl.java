package com.kfq.fund.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.IPersonDao;
import com.kfq.fund.vo.PersonVO;

@Service
public class PersonServiceImpl implements IPersonService{
	
	@Autowired
	private IPersonDao dao;

	@Override
	public PersonVO getPerson() {
		PersonVO person = dao.getPerson();
		return person;
	}
	
	
}
