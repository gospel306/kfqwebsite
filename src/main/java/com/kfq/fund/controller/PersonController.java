package com.kfq.fund.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kfq.fund.service.IPersonService;
import com.kfq.fund.vo.PersonVO;

@CrossOrigin
@RestController
@RequestMapping("/persons")
public class PersonController {
	
	@Autowired
	IPersonService personService;
	
	@RequestMapping("/all")
	public PersonVO getAll() {
		return personService.getPerson();
	}
}