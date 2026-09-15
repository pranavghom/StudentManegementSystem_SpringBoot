package com.example.demo.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.entites.Enquiry;
import com.example.demo.repo.EnquiryRepo;

@Repository
public class EnquiryDao {
	
	@Autowired
	EnquiryRepo enqRepo;
	
	public void saveEnquiryDataDao(Enquiry enq ) {
		enqRepo.save(enq); //save
	}
	

}
