package org.itstep.HW12.servlet;

import org.itstep.HW12.entity.User;
import org.itstep.HW12.service.UserService;
import org.itstep.HW12.service.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/step3")
public class Step3Servlet extends HttpServlet {

    private UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("step3.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String university = request.getParameter("university");
        String faculty = request.getParameter("faculty");
        String group = request.getParameter("group");

        User user = userService.step3(university, faculty, group);

        if(user != null){
            HttpSession session = request.getSession();
            session.setAttribute("university", user.getUniversity());
            session.setAttribute("faculty", user.getFaculty());
            session.setAttribute("group", user.getGroup());
            response.sendRedirect("/index");
        }
        else {
            response.sendRedirect("/step3");
        }
    }

    @Override
    public void init() throws ServletException {
        userService = new UserServiceImpl();
    }
}
