package com.example.demo.repo;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entites.Student;

public interface StudentRepo extends CrudRepository<Student,Integer> {

public Student findByEmailAndPassword(String email,String password);

   
}
