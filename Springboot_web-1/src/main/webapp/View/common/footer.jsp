<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<style>
    .footer {
        background-color: #34495e;
        color: #bdc3c7;
        text-align: center;
        padding: 15px 0;
        font-family: 'Segoe UI', Tahoma, sans-serif;
        font-size: 14px;
        margin-top: auto; /* Sticky footer behavior element */
    }
</style>

<footer class="footer">
    <div>
        &copy; <%= Calendar.getInstance().get(Calendar.YEAR) %> Student Management System. All rights reserved.
    </div>
</footer>