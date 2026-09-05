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

   
    <div class="form-container">
        <h2>Student Registration</h2>
        <form action="/StudentEditSuccess?sid=${std.sid }" method="POST">
            
            <!-- Basic Info -->
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="name" value="${std.name}" placeholder="Enter your full name" required />
            </div>

            <!-- Gender (Corrected name attribute) -->
        <div class="form-group">

    <label>Gender</label>

    <div class="radio-group">

        <label>
            <input type="radio"
                   name="gender"
                   value="male"
                  
                   ${std.gender == 'Male' ? 'checked' : ''} />
            Male
        </label>

        <label>
            <input type="radio"
                   name="gender"
                   value="female"
                   ${std.gender == 'Female' ? 'checked' : ''} />
            Female
        </label>

        <label>
            <input type="radio"
                   name="gender"
                   value="other"
                   ${std.gender == 'Other' ? 'checked' : ''} />
            Other
        </label>

    </div>

</div>

            <!-- New Fields Added -->
            <div class="form-group">
                <label>Date of Birth</label>
                <input type="date"value="${std.dob}" name="dob" required />
            </div>

            <div class="form-group">
                <label>Mobile Number</label>
                <input type="tel"value="${std.phoneNo}" name="phoneNo"  placeholder="e.g., 9876543210"  pattern="[0-9]{10}" required />
            </div>

            <div class="form-group">
                <label>Course</label>
                <select name="course" required>
                    <option value="">Select your course</option>
                    <option value="bsc" ${std.course== 'bsc'?'selected':'' }>B.Sc Computer Science</option>
                    <option value="bca"${std.course== 'bca'?'selected':'' }>BCA</option>
                    <option value="bcom"${std.course== 'bcom'?'selected':'' }>B.Com</option>
                    <option value="Java Full Stack"${std.course== 'Java Full Stack'?'selected':'' }>Java Full Stack</option>
                    <option value="Paython"${std.course== 'Python'?'selected':'' }>BCA</option>
                    <option value="Web Development"${std.course== 'Web Development'?'selected':'' }>Web Development</option>
                    <option value="Data Science"${std.course== 'Data Science'?'selected':'' }>Data Science</option>
                    <option value="Software Testing"${std.course== 'Software Testing'?'selected':'' }>Software Testing</option>
                </select>
            </div>

            <div class="form-group">
                <label>Address</label>
                <textarea name="address" value="${std.email}" rows="3"  placeholder="Enter your full address">${std.address}</textarea>
            </div>

            <!-- Credentials -->
            <div class="form-group">
                <label>Student Email</label>
                <input type="email" value="${std.email}" name="email" placeholder="student@example.com" required />
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="name" value="${std.password}" name="password" placeholder="Create a secure password" required />
            </div>
                   <div class="form-group">
                <label>Stetus</label>
                <select name="Stetus" required>
                    <option value="pending">Pending</option>  
                    <option value="accept">Accept</option>
                     </select>
</div>

            <button type="submit" class="btn-submit">Modify Update</button>
        <br>
        <div>${msg}</div>
       
        </form>
    </div>

   

</body>
</html>