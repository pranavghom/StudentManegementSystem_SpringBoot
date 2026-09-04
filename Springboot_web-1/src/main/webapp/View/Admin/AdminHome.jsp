<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Student Management System</title>

<!-- FontAwesome Icons साठी -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background-color: #f4f7f6;
        color: #333;
    }

    /* मुख्य कंटेनर */
    .dashboard-container {
        width: 92%;
        max-width: 1200px;
        margin: 30px auto;
    }

    /* स्वागत बॅनर */
    .welcome-banner {
        background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
        color: white;
        padding: 25px 30px;
        border-radius: 12px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        margin-bottom: 25px;
    }

    .welcome-text h1 {
        font-size: 24px;
        margin-bottom: 5px;
    }

    .welcome-text p {
        font-size: 14px;
        opacity: 0.85;
    }

    .admin-badge {
        background: rgba(255, 255, 255, 0.2);
        padding: 8px 15px;
        border-radius: 20px;
        font-size: 14px;
        font-weight: 600;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    /* स्टॅट्स कार्ड्स (डॅशबोर्डवरील आकडेवारी) */
    .stats-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
        gap: 20px;
        margin-bottom: 30px;
    }

    .stat-box {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        display: flex;
        align-items: center;
        justify-content: space-between;
        border-left: 5px solid #2a5298;
    }

    .stat-box.green { border-left-color: #27ae60; }
    .stat-box.orange { border-left-color: #f39c12; }
    .stat-box.purple { border-left-color: #8e44ad; }

    .stat-info h3 {
        font-size: 13px;
        color: #777;
        text-transform: uppercase;
        margin-bottom: 5px;
    }

    .stat-info p {
        font-size: 22px;
        font-weight: bold;
        color: #2c3e50;
    }

    .stat-box i {
        font-size: 32px;
        color: #cbd5e1;
    }

    /* क्विक ॲक्शन बटन्स */
    .quick-actions {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        margin-bottom: 30px;
    }

    .quick-actions h3 {
        font-size: 16px;
        color: #2c3e50;
        margin-bottom: 15px;
    }

    .action-buttons {
        display: flex;
        gap: 15px;
        flex-wrap: wrap;
    }

    .btn {
        padding: 10px 18px;
        border-radius: 6px;
        text-decoration: none;
        font-size: 14px;
        font-weight: 600;
        display: flex;
        align-items: center;
        gap: 8px;
        transition: 0.2s;
    }

    .btn-primary { background-color: #2575fc; color: white; }
    .btn-primary:hover { background-color: #1a5db6; }

    .btn-success { background-color: #27ae60; color: white; }
    .btn-success:hover { background-color: #219150; }

    .btn-danger { background-color: #e74c3c; color: white; }
    .btn-danger:hover { background-color: #c0392b; }

</style>
</head>
<body>

   <!-- कॉमन हेडर फाईल इन्क्लूड केली आहे -->
   <%@include file="AdminHeader.jsp" %>

   <div class="dashboard-container">
   
       <!-- १. स्वागत बॅनर -->
       <div class="welcome-banner">
           <div class="welcome-text">
               <h1>Welcome Back, Admin! 👋</h1>
           </div>
           <div class="admin-badge">
               <i class="fa-solid fa-user-shield"></i> Administrator
           </div>
       </div>

       <!-- २. डॅशबोर्ड स्टॅट्स (कार्ड्स) -->
       <div class="stats-grid">
           <div class="stat-box">
               <div class="stat-info">
                   <h3>Total Students</h3>
                   <p>${stud_count != null ? stud_count : '50'}</p>
               </div>
               <i class="fa-solid fa-users"></i>
           </div>
           
           <div class="stat-box green">
               <div class="stat-info">
                   <h3>Active Courses</h3>
                   <p>4</p>
               </div>
               <i class="fa-solid fa-book-open"></i>
           </div>
           
           <div class="stat-box orange">
               <div class="stat-info">
                   <h3>System Status</h3>
                   <p>Online</p>
               </div>
               <i class="fa-solid fa-server"></i>
           </div>
           
           <div class="stat-box purple">
               <div class="stat-info">
                   <h3>Portal Security</h3>
                   <p>Secure</p>
               </div>
               <i class="fa-solid fa-lock"></i>
           </div>
       </div>

       <!-- ३. क्विक ॲक्शन्स (जलद कृती) -->
       <div class="quick-actions">
           <h3>Quick Actions</h3>
           <div class="action-buttons">
               <a href="/viewAllStudentsPage" class="btn btn-primary">
                   <i class="fa-solid fa-list"></i> View All Students
               </a>
               <a href="/signup" class="btn btn-success">
                   <i class="fa-solid fa-user-plus"></i> Add New Student
               </a>
               <a href="/home" class="btn btn-danger">
                   <i class="fa-solid fa-right-from-bracket"></i> Logout
               </a>
           </div>
       </div>

   </div>

</body>
</html>