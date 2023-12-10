package com.theara.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

@WebServlet("/square-servlet")
public class SquareServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException {
    //    int total = Integer.parseInt(req.getParameter("total"));

    // HTTPSESSION
    //    HttpSession session = req.getSession();
    //    int total = (int) session.getAttribute("total");

    // COOKIE

    AtomicInteger total = new AtomicInteger();
    Cookie cookies[] = req.getCookies();
    Arrays.stream(cookies)
        .forEach(
            cookie -> {
              if (Objects.equals(cookie.getName(), "total")) {
                total.set(Integer.parseInt(cookie.getValue()));
              }
            });
    PrintWriter printWriter = resp.getWriter();
    printWriter.println("Total number of sum : " + total);
  }
}
