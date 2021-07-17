package org.itstep.HW12.servlet;

import org.itstep.HW12.entity.User;
import org.itstep.HW12.service.UserService;
import org.itstep.HW12.service.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/step1")
public class Step1Servlet extends HttpServlet {

    private UserService userService;

    @Override
    public void init() throws ServletException {
        userService = new UserServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("step1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Integer age = Integer.valueOf(request.getParameter("age"));

        User user = userService.step1(name, surname, age);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("name", user.getName());
            session.setAttribute("surname", user.getSurname());
            session.setAttribute("age", user.getAge());
            response.sendRedirect("step2");
        }
        else {
            response.sendRedirect("/step1");
        }
    }
}
