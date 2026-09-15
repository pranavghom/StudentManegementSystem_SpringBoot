package com.example.demo.repo;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entites.Enquiry;

public interface EnquiryRepo extends CrudRepository<Enquiry,Integer> {
 
}
