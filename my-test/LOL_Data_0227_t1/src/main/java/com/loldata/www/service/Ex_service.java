package com.loldata.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loldata.www.dao.Ex_dao;

@Service
public class Ex_service {
	@Autowired
	private Ex_dao e_dao;
}
