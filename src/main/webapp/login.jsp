<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
        <title>PhoneStore Log in</title>

        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
        <script src="https://kit.fontawesome.com/e6576c5494.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/login.css" />
    </head>
    <body class="d-flex flex-column">
        <main class="d-flex flex-column flex-grow-1 justify-content-center align-items-center p-3">
            <div class="login-container">
                <p>
                	<a id="back-home" href="./" class="text-body"><i class="fas fa-arrow-left me-1"></i>Back to Home</a>
                </p>

                <div class="card bg-dark text-white">
                    <div class="card-header">
                        <h1 class="card-title text-center">Login</h1>
                    </div>

					<%            
	            		// Nếu người dùng đăng nhập thất bại thì hiện thông báo lỗi
	            		if (request.getAttribute("errorMessage") != null) {
		            %>
		            	            
	                <div class="alert alert-danger text-center mx-3 my-0" role="alert">
	                	<i class="fas fa-exclamation-triangle fa-lg"></i>
	                	${errorMessage}
	                </div>
		            
		            <% } %>	

                    <div class="card-body">
                        <form id="login-form" class="needs-validation" action="./login" method="post" novalidate>
                            <div class="mb-3">
                                <label for="login-username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="login-username" name="username" required />
                                <div class="invalid-feedback">Please enter your username.</div>
                            </div>

                            <div class="mb-4">
                                <label for="login-password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="login-password" name="password" required />
                                <div class="invalid-feedback">Please enter your password.</div>
                                <p class="text-end mt-1">
                                    <a href="#" class="text-white">Forgot Password?</a>
                                </p>
                            </div>

                            <div class="form-check mb-2">
                                <input type="checkbox" class="form-check-input no-validate" id="remember-me" name="rememberMe" />
                                <label class="form-check-label" for="remember-me">Remember me</label>
                            </div>

                            <button type="submit" class="btn btn-primary w-100 rounded-pill text-uppercase mb-4">Log in</button>

                            <p class="mb-0">Don't have an account? <a href="#" class="text-white">Sign up</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </main>

        <%@ include file="footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="js/login.js"></script>
    </body>
</html>
