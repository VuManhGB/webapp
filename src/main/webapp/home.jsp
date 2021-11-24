<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon" />
        <title>PhoneStore</title>

        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
        <script src="https://kit.fontawesome.com/e6576c5494.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="css/style.css" />
    </head>
    <body class="d-flex flex-column">
        <%@ include file="header.jsp"%>

        <main class="flex-grow-1">
            <%
            	String isLoggedIn = request.getParameter("isLoggedIn");
            
            	// Nếu người dùng đăng nhập thành công thì hiện thông báo
            	if (isLoggedIn != null && isLoggedIn.equals("true")) {
            %>
            
            <div id="logged-in-alert" class="alert alert-success alert-dismissible text-center mt-2 mb-0 fade show" role="alert">
                <i class="fas fa-check-circle"></i> Log in successfully!
                <button type="button" class="btn-close h-100 py-0" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            
            <% } %>

            <div class="row gx-0">
                <!-- Left column -->
                <section class="col-md-8 p-3">
                	<% for (int i = 1; i <= 3; i++) { %>
                
                    <div class="card product mb-3">
                        <div class="card-body">
                            <h2 class="card-title">Information of Product <%= i %></h2>
                            <p class="card-text fw-bold">Title description, date</p>
                            <div class="card-img d-flex justify-content-center align-items-center fs-4 mb-2">Image</div>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sunt numquam culpa labore perferendis ullam soluta voluptates earum impedit harum fugiat? Aliquam rerum explicabo impedit accusamus delectus animi sed, eligendi culpa.</p>
                        </div>
                    </div>
                    
                    <% } %>
                </section>

                <!-- Right column -->
                <section class="col-md-4 p-3">
                    <div class="card cart mb-3">
                        <div class="card-body">
                            <h2 class="card-title">Shopping Cart</h2>
                            <div class="card-img d-flex justify-content-center align-items-center fs-4 mb-2">Cart</div>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sunt numquam culpa labore perferendis ullam soluta voluptates earum impedit harum fugiat? Aliquam rerum explicabo impedit accusamus delectus animi sed, eligendi culpa.</p>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="card-body">
                            <h2 class="card-title">Popular products or banners</h2>
                            <div class="card-img d-flex justify-content-center align-items-center fs-4 mb-2"><p>Image</p></div>
                            <div class="card-img d-flex justify-content-center align-items-center fs-4 mb-2"><p>Image</p></div>
                            <div class="card-img d-flex justify-content-center align-items-center fs-4 mb-2"><p>Image</p></div>
                        </div>
                    </div>
                </section>
            </div>
        </main>

        <%@ include file="footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
