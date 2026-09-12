<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    /* CSS Variables for easy color management */
    :root {
        --nav-bg: #1e293b;       /* Dark slate blue */
        --nav-hover: #3b82f6;    /* Bright blue */
        --text-color: #f8fafc;   /* Off-white */
        --text-muted: #94a3b8;   /* Light gray */
    }

    .navbar {
        background-color: var(--nav-bg);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        padding: 0 40px;
        height: 70px;
        min-height: 70px;
        flex-shrink: 0;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        position: sticky;
        top: 0;
        z-index: 1000;
    }

    .navbar-brand {
        color: var(--text-color);
        font-size: 24px;
        font-weight: 700;
        text-decoration: none;
        letter-spacing: 0.5px;
        display: flex;
        align-items: center;
        gap: 10px;
        transition: transform 0.2s ease;
    }

    .navbar-brand:hover {
        transform: scale(1.02);
    }

    .navbar-nav {
        list-style: none;
        display: flex;
        align-items: center;
        margin: 0;
        padding: 0;
        gap: 15px; /* Spacing between buttons */
    }

    .nav-item .nav-link {
        color: var(--text-muted);
        text-decoration: none;
        font-size: 15px;
        font-weight: 500;
        padding: 10px 18px;
        border-radius: 6px;
        transition: all 0.3s ease;
    }

    /* Hover effect for general links */
    .nav-item .nav-link:hover {
        color: var(--text-color);
        background-color: rgba(255, 255, 255, 0.05);
    }

    /* Special Highlight for Sign Up Button */
    .nav-item .btn-signup {
        background-color: var(--nav-hover);
        color: var(--text-color) !important;
        box-shadow: 0 4px 10px rgba(59, 130, 246, 0.3);
    }

    .nav-item .btn-signup:hover {
        background-color: #2563eb;
        transform: translateY(-1px);
        box-shadow: 0 6px 14px rgba(59, 130, 246, 0.4);
    }
</style>

<nav class="navbar">
    <a href="/home" class="navbar-brand">
        <span>🎓</span> StudentPortal
    </a>
    
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="/getStudentHome?sid=${std.sid }">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/MyProfile?sid=${std.sid }">Edit Profile</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="EnquiryFrom?sid=${std.sid }">Enquiry</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="#">My Enquirys</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Change Password</a>
        </li>
        
        
    </ul>
</nav>