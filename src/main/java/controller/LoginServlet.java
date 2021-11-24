package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        ServletContext context = getServletContext();

        // Lấy dữ liệu từ form đăng nhập
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Đọc dữ liệu từ web.xml
        String correctUsername = context.getInitParameter("username");
        String correctPassword = context.getInitParameter("password");

        if (username != null && password != null) {
            if (username.equals(correctUsername) && password.equals(correctPassword)) {
                // Nếu username và mật khẩu chính xác thì gửi người dùng đến trang chủ
                response.sendRedirect("./?isLoggedIn=true");
            } else {
                // Nếu username hoặc mật khẩu không chính xác
                // thì gửi người dùng về lại trang đăng nhập cùng thông báo
                request.setAttribute("errorMessage", "Username or password is invalid.");
                request.getRequestDispatcher("./login.jsp").forward(request, response);
            }
        } else {
            // Nếu không tìm thấy tham số username hoặc password
            // thì gửi người dùng về lại trang đăng nhập
            response.sendRedirect("./login.jsp");
        }
    }
}
