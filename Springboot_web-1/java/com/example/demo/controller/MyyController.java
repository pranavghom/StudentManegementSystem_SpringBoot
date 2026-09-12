package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.DAO.StudentDao;
import com.example.demo.entites.Student;

@Controller
public class MyyController {
	@Autowired 
	public StudentDao stdDao;
	@RequestMapping("home")
	public String Home() {
		return "Home";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping("signup")
	public String signup(Model model ) {
		model.addAttribute("std",new Student());
		return "Signup";
	}
	@PostMapping("/saveData")
	public String saveData(Student std, Model model) {
		stdDao.saveDataDao(std);
		model.addAttribute("msg","Registration succssfull");
		return "Signup";
	}
	
	
	@GetMapping("checkSignIn")
	public String checkSignIn(String email,String password,Model model)
	{
		
			Student std = stdDao.checkSignIn(email,password);
			if (std!= null) {
				if(std.getStetus().equals("accept")) {
					model.addAttribute("std",std);
					return "Student/StudentHome";
				}
				else {
					model.addAttribute("errorMas","Your Stetus is pending");
					return"login";
				}
			 
			}
			else {
				model.addAttribute("errorMas","Invalid Email or Password");
				return"login";
				
			}
		
	}
	
	@GetMapping("checkSignInAdmin")
	public String checkSignInAdmin(String email,String password,Model model)
	{
		if(email.equals("admin@gmail.com")&& password.equals("super")) {
			return "Admin/AdminHome";
		}
		
			else {
				model.addAttribute("errorMas","Invalid Email or Password");
				return"login";
				
			}
		
	}
	
	@ResponseBody
	@RequestMapping("/viewAllStudentsData")
		public List <Student> getallStudents(Model model) {
		List<Student> stud_list = stdDao.getAllStudentDao();
		model.addAttribute("stud_list",stud_list);
		return stud_list;
		
	}
	
//	@ResponseBody
	@RequestMapping("/viewAllStudentsPage")
		public String getallStudentsPage(Model model) {
		List<Student> stud_list = stdDao.getAllStudentDao();
		model.addAttribute("stud_list",stud_list);
		return "Admin/StudentList";
	}
	@ResponseBody
	@RequestMapping("/viewStudent")
	public Student getStudent(int sid  , Model model) {
		Student std =stdDao.getStudentDao(sid);
		return std;
		
	}
	@RequestMapping("/getAdminHomePage")
	public String getAdminHome() {
		return "Admin/AdminHome";
	}
	
	@RequestMapping("/adminSignin")
	public String adminLogin() {
		return "AdminLogin";
	}
	@RequestMapping("getStudentHome")
	public String getStudentHome(@RequestParam("sid") int sid , Model model) {
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std" , std);
		return "Student/StudentHome";
	}
	@RequestMapping("studentEdit")
	public String studentEdit(@RequestParam("sid") int sid , Model model) {
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std" , std);
		return "Admin/signupEdit";
		
	}
	@PostMapping("/StudentEditSuccess")
	public String StudentEditSuccess(@RequestParam("sid") int sid ,Student std,Model model) {
		Student std_edit = stdDao.studentEditDao(sid , std);
		model.addAttribute("std",std_edit);
		model.addAttribute("msg", "Save Data sucsessfully ");
		return "Admin/signupEdit";
	}
	@RequestMapping("MyProfile")
	public String myProfile(@RequestParam("sid") int sid , Model model) {
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std" , std);
		return "Student/MyProfile";
	}
	
	@PostMapping("/MyPrifileEditSuccess")
	public String MyProfileeditSuccess(@RequestParam("sid") int sid ,Student std,Model model) {
		Student std_edit = stdDao.studentEditDao(sid , std);
		model.addAttribute("std",std_edit);
		model.addAttribute("msg", "Save Data sucsessfully ");
		return "Student/MyProfile";
	}
}
