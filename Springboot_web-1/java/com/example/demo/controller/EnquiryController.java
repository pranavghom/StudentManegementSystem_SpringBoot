package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.EnquiryDao;
import com.example.demo.DAO.StudentDao;
import com.example.demo.entites.Enquiry;
import com.example.demo.entites.Student;



@Controller
public class EnquiryController {
	@Autowired
	StudentDao stdDao;
	@Autowired
	EnquiryDao enqDao;
	
	
	@RequestMapping("/EnquiryFrom")
	public String enquiryFrom(@RequestParam("sid") int sid ,Model model) {
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std" , std);
		return"Student/Enquiry";
				
	}
	@PostMapping("/savaEnqueryData")
	public String saveEnqueryData(Enquiry enq,Model model) {
		
		enqDao.saveEnquiryDataDao(enq );
		model.addAttribute("msgg","Enquiry Save Successfully");
		
		
		
		return"Student/Enquiry";
	}

}
