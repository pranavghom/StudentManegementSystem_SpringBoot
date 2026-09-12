<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Dashboard -Student Management System</title>

<!-- FontAwesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background-color: #f1f5f9;
        color: #334155;
    }

    /* मुख्य कंटेनर */
    .container {
        width: 90%;
        max-width: 1200px;
        margin: 30px auto;
    }

    /* १. स्वागत बॅनर */
    .hero-banner {
        background: linear-gradient(135deg, #2563eb 0%, #1d4ed8 100%);
        color: white;
        padding: 25px 30px;
        border-radius: 12px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 4px 15px rgba(37, 99, 235, 0.2);
        margin-bottom: 25px;
    }

    .hero-text h1 {
        font-size: 24px;
        margin-bottom: 6px;
    }

    .hero-text p {
        font-size: 14px;
        opacity: 0.9;
    }

    .role-badge {
        background: rgba(255, 255, 255, 0.2);
        padding: 8px 16px;
        border-radius: 20px;
        font-size: 13px;
        font-weight: 600;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    /* २. स्टॅट्स ग्रिड (Card Widgets) */
    .stats-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 20px;
        margin-bottom: 25px;
    }

    .stat-card {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        display: flex;
        align-items: center;
        justify-content: space-between;
        border: 1px solid #e2e8f0;
    }

    .stat-info h4 {
        font-size: 12px;
        color: #64748b;
        text-transform: uppercase;
        margin-bottom: 5px;
    }

    .stat-info p {
        font-size: 20px;
        font-weight: bold;
        color: #0f172a;
    }

    .stat-icon {
        width: 45px;
        height: 45px;
        border-radius: 8px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 20px;
    }

    .blue-bg { background: #dbeafe; color: #2563eb; }
    .green-bg { background: #dcfce7; color: #16a34a; }
    .purple-bg { background: #f3e8ff; color: #9333ea; }
    .orange-bg { background: #ffedd5; color: #ea580c; }

    /* ३. मुख्य माहिती विभाग (2 Columns Layout) */
    .dashboard-grid {
        display: grid;
        grid-template-columns: 2fr 1fr;
        gap: 25px;
    }

    @media (max-width: 850px) {
        .dashboard-grid {
            grid-template-columns: 1fr;
        }
    }

    .content-card {
        background: white;
        padding: 22px;
        border-radius: 10px;
        border: 1px solid #e2e8f0;
        box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        margin-bottom: 25px;
    }

    .content-card h3 {
        font-size: 16px;
        color: #1e293b;
        margin-bottom: 18px;
        display: flex;
        align-items: center;
        gap: 10px;
        border-bottom: 1px solid #f1f5f9;
        padding-bottom: 10px;
    }

    /* प्रोफाइल टेबल */
    .info-table {
        width: 100%;
        border-collapse: collapse;
    }

    .info-table td {
        padding: 10px 0;
        font-size: 14px;
    }

    .info-table td.label-col {
        font-weight: 600;
        color: #64748b;
        width: 35%;
    }

    .info-table td.value-col {
        color: #0f172a;
    }

    /* क्विक ॲक्शन्स बटन्स */
    .action-links {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .btn-link {
        display: flex;
        align-items: center;
        gap: 10px;
        padding: 12px 15px;
        background: #f8fafc;
        border: 1px solid #cbd5e1;
        border-radius: 6px;
        color: #334155;
        text-decoration: none;
        font-weight: 600;
        font-size: 14px;
        transition: 0.2s;
    }

    .btn-link:hover {
        background: #2563eb;
        color: white;
        border-color: #2563eb;
    }

    .btn-danger {
        color: #dc2626;
        border-color: #fca5a5;
    }

    .btn-danger:hover {
        background: #dc2626;
        color: white;
        border-color: #dc2626;
    }
</style>
</head>
<body>

    <!-- कॉमन हेडर (जर Admin/Common मध्ये असेल तर त्यानुसार include कर) -->
    <jsp:include page="StudentHeader.jsp" />

    <div class="container">

        <!-- १. स्वागत बॅनर -->
        <div class="hero-banner">
            <div class="hero-text">
                <h1>Welcome Back, ${std.name}! 👋</h1>
                <p>Welcome to your Student Dashboard.</p>
            </div>
            <div class="role-badge">
                <i class="fa-solid fa-user-graduate"></i> Student Account
            </div>
        </div>

        <!-- २. स्टॅट्स ग्रिड (cards) -->
        <div class="stats-container">
            <div class="stat-card">
                <div class="stat-info">
                    <h4>Student ID</h4>
                    <p>${std.sid}</p>
                </div>
                <div class="stat-icon purple-bg">
                    <i class="fa-solid fa-id-card"></i>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h4>Course</h4>
                    <p>${std.course}</p>
                </div>
                <div class="stat-icon blue-bg">
                    <i class="fa-solid fa-book-open"></i>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h4>Attendance</h4>
                    <p>88%</p>
                </div>
                <div class="stat-icon green-bg">
                    <i class="fa-solid fa-user-check"></i>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h4>Status</h4>
                    <p>Active</p>
                </div>
                <div class="stat-icon orange-bg">
                    <i class="fa-solid fa-check-circle"></i>
                </div>
            </div>
        </div>

        <!-- ३. मुख्य लेआउट (प्रोफाईल माहिती + पर्याय) -->
        <div class="dashboard-grid">

            <!-- डावी बाजू: वैयक्तिक माहिती (Personal Details) -->
            <div class="content-card">
                <h3><i class="fa-solid fa-address-card" style="color: #2563eb;"></i> Profile Details</h3>

                <table class="info-table">
                    <tr>
                        <td class="label-col">Full Name:</td>
                        <td class="value-col">${std.name}</td>
                    </tr>
                    <tr>
                        <td class="label-col">Email Address:</td>
                        <td class="value-col">${std.email}</td>
                    </tr>
                    <tr>
                        <td class="label-col">Phone Number:</td>
                        <td class="value-col">${std.phoneNo}</td>
                    </tr>
                    <tr>
                        <td class="label-col">Gender:</td>
                        <td class="value-col">${std.gender}</td>
                    </tr>
                    <tr>
                        <td class="label-col">Date of Birth:</td>
                        <td class="value-col">${std.dob}</td>
                    </tr>
                    <tr>
                        <td class="label-col">Address:</td>
                        <td class="value-col">${std.address}</td>
                    </tr>
                </table>
            </div>

            <!-- उजवी बाजू: क्विक ॲक्शन्स -->
            <div>
                <div class="content-card">
                    <h3><i class="fa-solid fa-sliders" style="color: #16a34a;"></i> Quick Actions</h3>

                    <div class="action-links">
                        <a href="MyProfile?sid=${std.sid }" class="btn-link">
                            <i class="fa-solid fa-user-pen"></i> Edit Profile
                        </a>
                        <a href="changePassword" class="btn-link">
                            <i class="fa-solid fa-key"></i> Change Password
                        </a>
                        <a href="/home" class="btn-link btn-danger">
                            <i class="fa-solid fa-right-from-bracket"></i> Logout
                        </a>
                    </div>
                </div>
            </div>

        </div>

    </div>

</body>
</html>