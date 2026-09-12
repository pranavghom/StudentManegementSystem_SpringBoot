-<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <style>
        html, body { height: 100%; margin: 0; }
        body { display: flex; flex-direction: column; font-family: Arial, sans-serif; background-color: #f8f9fa; }
        .form-container { width: 400px; margin: 40px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; margin-bottom: 20px; color: #2c3e50; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; color: #555; font-weight: bold; }
        .form-group input, .form-group select, .form-group textarea { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        
        /* Radio button styling */
        .radio-group { display: flex; gap: 15px; margin-top: 5px; }
        .radio-group label { font-weight: normal; cursor: pointer; }
        .btn-submit { width: 100%; padding: 12px; background: #2ecc71; border: none; color: white; font-size: 16px; border-radius: 4px; cursor: pointer; margin-top: 10px; }
        .btn-submit:hover { background: #27ae60; }
    </style>
</head>
<body>

    <jsp:include page="common/header.jsp" />

    <div class="form-container">
        <h2>Student Registration</h2>
        <form action="/saveData" method="POST">
            
            <!-- Basic Info -->
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="name" placeholder="Enter your full name" required />
            </div>

            <!-- Gender (Corrected name attribute) -->
            <div class="form-group">
                <label>Gender</label>
                <div class="radio-group">
                    <label><input type="radio" name="gender" value="male" required /> Male</label>
                    <label><input type="radio" name="gender" value="female" value="female" /> Female</label>
                    <label><input type="radio" name="gender" value="other" value="other" /> Other</label>
                </div>
            </div>

            <!-- New Fields Added -->
            <div class="form-group">
                <label>Date of Birth</label>
                <input type="date" name="dob" required />
            </div>

            <div class="form-group">
                <label>Mobile Number</label>
                <input type="tel" name="phoneNo" placeholder="e.g., 9876543210" pattern="[0-9]{10}" required />
            </div>

            <div class="form-group">
                <label>Course</label>
                <select name="course" required>
                    <option value="">Select your course</option>
                    <option value="bsc">B.Sc Computer Science</option>
                    <option value="bca">BCA</option>
                    <option value="bcom">B.Com</option>
                </select>
            </div>

            <div class="form-group">
                <label>Address</label>
                <textarea name="address" rows="3" placeholder="Enter your full address"></textarea>
            </div>

            <!-- Credentials -->
            <div class="form-group">
                <label>Student Email</label>
                <input type="email" name="email" placeholder="student@example.com" required />
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="Create a secure password" required />
            </div>
            
               <div class="form-group">
                <label>Stetus</label>
                <select name="Stetus" required>
                    <option value="pending">Pending</option>  
                 
                     </select>
</div>
            <button type="submit" class="btn-submit">Register</button>
        <br>
        <div>${msg}</div>
       
        </form>
    </div>
    
	<div>
 		<jsp:include page="common/footer.jsp"/>
</div>

</body>
</html>