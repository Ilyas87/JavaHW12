package org.itstep.HW12.servlet;

import org.itstep.HW12.entity.User;
import org.itstep.HW12.service.UserService;
import org.itstep.HW12.service.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/step2")
public class Step2Servlet extends HttpServlet {

    private UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("step2.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city = request.getParameter("city");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");

        User user = userService.step2(city, address, phone);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("city", user.getCity());
            session.setAttribute("address", user.getAddress());
            session.setAttribute("phone", user.getPhone());
            response.sendRedirect("step3");
        }
        else {
            response.sendRedirect("/step2");
        }
    }

    @Override
    public void init() throws ServletException {
        userService = new UserServiceImpl();
    }
}
