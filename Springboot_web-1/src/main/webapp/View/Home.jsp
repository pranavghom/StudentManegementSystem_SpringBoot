<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Student Management System</title>
    <style>
        html, body { 
            height: 100%; 
            margin: 0; 
            padding:0;
        }
        body { 
            display: flex; 
            flex-direction: column; 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            background-color: #f1f5f9; 
        }
        
        /* Hero Section */
        .hero-section {
            background: linear-gradient(135deg, #1e293b 0%, #3b82f6 100%);
            color: white;
            padding: 60px 20px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .hero-section h1 {
            margin: 0 0 15px 0;
            font-size: 36px;
            font-weight: 700;
        }
        .hero-section p {
            margin: 0 auto 25px auto;
            font-size: 18px;
            max-width: 600px;
            color: #cbd5e1;
            line-height: 1.6;
        }
        .btn-cta {
            display: inline-block;
            padding: 12px 30px;
            background-color: #ef4444; /* Eye-catching red/coral button */
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3);
            transition: all 0.2s ease;
        }
        .btn-cta:hover {
            background-color: #dc2626;
            transform: translateY(-2px);
        }

        /* Container for cards */
        .main-container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
            width: 100%;
            box-sizing: border-box;
        }

        /* Stats Section */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-bottom: 40px;
        }
        .stat-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            border-left: 5px solid #3b82f6;
        }
        .stat-card h3 { margin: 0; color: #64748b; font-size: 14px; text-transform: uppercase; }
        .stat-card p { margin: 10px 0 0 0; color: #1e293b; font-size: 28px; font-weight: bold; }

        /* Features Section */
        .section-title {
            color: #1e293b;
            margin-bottom: 20px;
            font-size: 22px;
            border-bottom: 2px solid #cbd5e1;
            padding-bottom: 8px;
        }
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
        }
        .feature-card {
            background: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
        }
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px rgba(0,0,0,0.1);
        }
        .feature-icon {
            font-size: 35px;
            margin-bottom: 15px;
        }
        .feature-card h4 {
            margin: 0 0 10px 0;
            color: #1e293b;
            font-size: 18px;
        }
        .feature-card p {
            margin: 0;
            color: #64748b;
            font-size: 14px;
            line-height: 1.5;
        }
    </style>
</head>
<body>

    <jsp:include page="common/header.jsp" />

    <div class="hero-section">
        <h1>Welcome to Student Portal</h1>
        <p>A centralized platform for students and faculty to manage academic profiles, attendance, courses, and examination schedules seamlessly.</p>
        <a href="/login" class="btn-cta">Explore Portal</a>
    </div>

    <div class="main-container">
        
        <h3 class="section-title">System Overview</h3>
        <div class="stats-grid">
            <div class="stat-card">
                <h3>Total Students</h3>
                <p>1,250+</p>
            </div>
            <div class="stat-card" style="border-left-color: #10b981;">
                <h3>Active Courses</h3>
                <p>45</p>
            </div>
            <div class="stat-card" style="border-left-color: #f59e0b;">
                <h3>Faculty Members</h3>
                <p>85</p>
            </div>
            <div class="stat-card" style="border-left-color: #8b5cf6;">
                <h3>Placements This Year</h3>
                <p>92%</p>
            </div>
        </div>

        <h3 class="section-title">Key Management Features</h3>
        <div class="features-grid">
            
            <div class="feature-card">
                <div class="feature-icon">📚</div>
                <h4>Course Registration</h4>
                <p>Browse through available departments, check elective credits, and enroll in your academic semesters with one click.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">📅</div>
                <h4>Attendance Tracker</h4>
                <p>Students can check their subject-wise daily attendance percentage and get alerts if it falls below the criteria.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">📝</div>
                <h4>Grades & Exams</h4>
                <p>View internal assessment marks, semester report cards, and download examination hall tickets easily.</p>
            </div>

        </div>
    </div>

    <jsp:include page="common/footer.jsp" />

</body>
</html>