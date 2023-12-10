package com.theara.servlet;

import com.theara.entity.Movie;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/movie")
public class JstlDemoServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    List<Movie> listMovie =
        Arrays.asList(
            new Movie(1L, "Transformers"),
            new Movie(2L, "Pacific rim"),
            new Movie(3L, "Godzilla"),
            new Movie(4L, "Pacific rim 2"));
    request.setAttribute("movie", listMovie);
    RequestDispatcher requestDispatcher = request.getRequestDispatcher("Movie.jsp");
    requestDispatcher.forward(request, response);
  }
}
