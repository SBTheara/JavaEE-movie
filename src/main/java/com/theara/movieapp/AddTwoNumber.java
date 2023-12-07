package com.theara.movieapp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "sum", urlPatterns = "/sum")
public class AddTwoNumber extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {
    int number1 = Integer.parseInt(request.getParameter("number1"));
    int number2 = Integer.parseInt(request.getParameter("number2"));
    int total = number1 + number2;
    //Cookie
    Cookie cookie = new Cookie("total",total+"");
    response.addCookie(cookie);
    response.sendRedirect("square-servlet");

    //HTTPSESSION
//    HttpSession session = request.getSession();
//    session.setAttribute("total", total);
//    response.sendRedirect("square-servlet");
//
    //        response.sendRedirect("square-servlet?total="+total); //URL Rewriting

    //        request.setAttribute("total",total);
    //        RequestDispatcher requestDispatcher = request.getRequestDispatcher("square-servlet");
    //        requestDispatcher.forward(request,response);
  }
}
