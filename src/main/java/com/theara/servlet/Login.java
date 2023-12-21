package com.theara.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loggin")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (StringUtils.equals(username, "admin") && StringUtils.equals(password, "admin")) {
            HttpSession session = req.getSession(true);
            session.setAttribute("username", username);
            resp.sendRedirect(req.getContextPath() + "/getHomePage");
        } else {
            out.println("Fails login");
        }
    }
}
