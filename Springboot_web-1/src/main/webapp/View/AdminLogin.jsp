 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <style>
        html, body { height: 100%; margin: 0; }
        body { display: flex; flex-direction: column; font-family: Arial, sans-serif; background-color: #f8f9fa; }
        .form-container { width: 320px; margin: 60px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; margin-bottom: 20px; color: #2c3e50; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; color: #555; }
        .form-group input { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-submit { width: 100%; padding: 12px; background: #3498db; border: none; color: white; font-size: 16px; border-radius: 4px; cursor: pointer;margin:9px; }
        .btn-submit:hover { background: #2980b9; }
    </style>
</head>
<body>

    <jsp:include page="common/header.jsp" />

    <div class="form-container">
        <h2>Admin Login</h2>
        
        <% if (request.getParameter("error") != null) { %>
            <div style="color: red; text-align: center; margin-bottom: 10px;">Invalid email or password!</div>
        <% } %>

        <form action="/checkSignInAdmin" method="get">
            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" required />
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required />
            </div>
            <button type="submit" class="btn-submit">LogIn</button>
            
             <button type="button" class="btn-submit">Register</button>
             <div>${std}</div>
             <div></div>
             
        </form>
    </div>

    <jsp:include page="common/footer.jsp" />

</body>
</html>