<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management - All Students</title>

<!-- FontAwesome Icons साठी सीडीएन (Icons वापरण्यासाठी) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
    /* बेसिक पेज स्टाइलिंग */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f7f6;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        max-width: 1200px;
        margin: 30px auto;
        background: #ffffff;
        padding: 25px 30px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    }

    /* हेडिंग आणि टॉप बार */
    .header-bar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 2px solid #eef2f5;
        padding-bottom: 15px;
        margin-bottom: 20px;
    }

    .header-bar h2 {
        color: #2c3e50;
        margin: 0;
        font-size: 24px;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    /* स्टॅट्स बॉक्सेस (पेज भरलेलं दिसण्यासाठी टॉप कार्ड्स) */
    .stats-container {
        display: flex;
        gap: 20px;
        margin-bottom: 25px;
    }

    .stat-card {
        flex: 1;
        background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
        color: white;
        padding: 18px 20px;
        border-radius: 10px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        box-shadow: 0 4px 10px rgba(37, 117, 252, 0.2);
    }

    .stat-card.green {
        background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
    }

    .stat-info h3 {
        margin: 0;
        font-size: 14px;
        font-weight: 500;
        opacity: 0.9;
    }

    .stat-info p {
        margin: 5px 0 0 0;
        font-size: 22px;
        font-weight: bold;
    }

    .stat-card i {
        font-size: 30px;
        opacity: 0.8;
    }

    /* टेबल डिझाईन */
    .table-responsive {
        overflow-x: auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
        background-color: #ffffff;
    }

    th {
        background-color: #34495e;
        color: #ffffff;
        text-align: left;
        padding: 14px 16px;
        font-size: 14px;
        font-weight: 600;
        letter-spacing: 0.5px;
    }

    th:first-child { border-top-left-radius: 8px; }
    th:last-child { border-top-right-radius: 8px; }

    td {
        padding: 12px 16px;
        border-bottom: 1px solid #eef2f5;
        color: #4a5568;
        font-size: 14px;
    }

    /* टेबल होव्हर इफेक्ट */
    tr:hover {
        background-color: #f8fafc;
        transition: 0.2s ease-in-out;
    }

    /* बॅज स्टाइलिंग (जेंडर आणि कोर्ससाठी) */
    .badge {
        padding: 5px 12px;
        border-radius: 20px;
        font-size: 12px;
        font-weight: 600;
        display: inline-block;
    }

    .badge-course {
        background-color: #e0f2fe;
        color: #0369a1;
    }

    .badge-gender {
        background-color: #f1f5f9;
        color: #475569;
    }

    .password-text {
        font-family: monospace;
        letter-spacing: 1px;
        color: #888;
    }

    /* बटण स्टाइल */
    .btn-add {
        background-color: #27ae60;
        color: white;
        padding: 10px 18px;
        text-decoration: none;
        border-radius: 6px;
        font-weight: 600;
        font-size: 14px;
        transition: 0.3s;
    }

    .btn-add:hover {
        background-color: #219150;
    }
</style>
</head>
<body>
   

<%@ include file="AdminHeader.jsp" %>
   <div class="container">
   
       <!-- १. टॉप हेडिंग आणि अ‍ॅक्शन बटण -->
       <div class="header-bar">
           <h2><i class="fa-solid fa-users"></i> Registered Student Details</h2>
           <a href="/signup" class="btn-add"><i class="fa-solid fa-user-plus"></i> Add New Student</a>
       </div>

      
       <div class="stats-container">
           <div class="stat-card">
               <div class="stat-info">
                   <h3>Total Registered Students</h3>
                   <p>${stud_list.size()}</p>
               </div>
               <i class="fa-solid fa-graduation-cap"></i>
           </div>
           
           <div class="stat-card green">
               <div class="stat-info">
                   <h3>Status</h3>
                   <p>Active Portal</p>
               </div>
               <i class="fa-solid fa-chart-line"></i>
           </div>
       </div>

       <!-- ३. मेन टेबल -->
       <div class="table-responsive">
           <table>
               <thead>
                   <tr>
                       <th>ID</th>
                       <th>Student Name</th>
                       <th>Email Address</th>
                       <th>Gender</th>
                       <th>Enrolled Course</th>
                       <th>Password</th>
                       <th>Edit</th>
                   </tr>
               </thead>
               <tbody>
                   <c:forEach var="stud" items="${stud_list}"> 
                       <tr>
                           <td><strong>${stud.sid}</strong></td>
                           <td><i class="fa-solid fa-user-circle" style="color: #cbd5e1; margin-right: 5px;"></i> ${stud.name}</td>
                           <td>${stud.email}</td>
                           <td><span class="badge badge-gender">${stud.gender}</span></td>
                           <td><span class="badge badge-course">${stud.course}</span></td>
                           <td class="password-text">${stud.password}</td>
                           <td><a href="studentEdit?sid=${stud.sid}">Modify</a></td>
                       </tr>
                   </c:forEach>
               </tbody>
           </table>
       </div>

   </div>
  
</body>
</html>