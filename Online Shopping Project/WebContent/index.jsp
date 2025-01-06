<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <!-- Error Messages -->
        <div class="whysignLogin">
            <% 
            String msg = request.getParameter("msg");
            if ("notexist".equals(msg)) { 
            %>
                <div class="error-message">Incorrect Username or Password</div>
            <% } else if ("invalid".equals(msg)) { %>
                <div class="error-message">Something Went Wrong! Try Again!</div>
            <% } %>
        </div>

        <!-- Login Form -->
        <div class="form-box login">
            <form action="loginAction.jsp" method="post">
                <h1>Login</h1>
                <div class="input-box">
                    <label for="login-email">Email</label>
                    <input type="email" id="login-email" name="email" placeholder="Enter Email" required aria-label="Login Email">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box">
                    <label for="login-password">Password</label>
                    <input type="password" id="login-password" name="password" placeholder="Enter Password" required aria-label="Login Password">
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <div class="forgot-link">
                    <a href="forgotPassword.jsp">Forgot Password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <button type="button" class="btn1" onclick="window.location.href='signup.jsp'">SignUp</button>

            </form>
        </div>

        <!-- Registration Form -->
        <div class="form-box register">
            <form action="registerAction.jsp" method="post">
                <h1>Registration</h1>
                <div class="input-box">
                    <label for="register-email">Email</label>
                    <input type="email" id="register-email" name="email" placeholder="Enter Email" required aria-label="Registration Email">
                    <i class='bx bxs-user'></i>
                </div>
                <div class="input-box">
                    <label for="register-password">Password</label>
                    <input type="password" id="register-password" name="password" placeholder="Enter Password" required aria-label="Registration Password">
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <button type="submit" class="btn">Register</button>
            </form>
        </div>
    </div>
</body>
</html>
