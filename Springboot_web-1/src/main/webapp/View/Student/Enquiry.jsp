-<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration Admin </title>
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

     <jsp:include page="StudentHeader.jsp" />
    <div class="form-container">
        <h2>Enquiry From</h2>
        <form action="/savaEnqueryData" method="POST">
            
            <!-- Basic Info -->
            <div class="form-group">
                <label>SID</label>
                <input type="text" id ="sid"name="sid" value="${std.sid}" />
            </div>
                 <div class="form-group">
                <label>Message</label>
                <textarea name="message" rows="3" placeholder="Enter your full address"></textarea>
            </div>
            
            
                  <div class="form-group">
                <label>Date</label>
                <input type="date" name="dob" required />
            </div>
            
                    <div class="form-group">
                <label>Remark</label>
                <input type="text" id= "remark" name="remark"  required />
            </div>
            <button type="submit" class="btn-submit">Send</button>
        <br>
        <div>${msgg}</div>
        </form>
    </div>

   

</body>
</html>