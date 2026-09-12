package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.StudentDao;
import com.example.demo.entites.Student;



@Controller
public class EnquiryController {
	@Autowired
	
	StudentDao stdDao;
	
	@RequestMapping("/EnquiryFrom")
	public String enquiryFrom(@RequestParam("sid") int sid ,Model model) {
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std" , std);
		return"Student/Enquiry";
		
				
	}

}
