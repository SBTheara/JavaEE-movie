package com.theara.controller;

import com.theara.entity.Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
  @GetMapping("/getStudent")
  public String getMovie(Model model) {
    List<Movie> listMovie =
        Arrays.asList(
            new Movie(1L, "Transformers"),
            new Movie(2L, "Pacific rim"),
            new Movie(3L, "Godzilla"),
            new Movie(4L, "Pacific rim 2"));
    model.addAttribute("movie", listMovie);
    return "Movie";
  }
  @GetMapping("/home")
  public String getHomePage(){
    return "HomePage";
  }


  @RequestMapping("/login")
  public String login(HttpServletRequest request, HttpServletResponse response,HttpSession session,Model model) throws IOException {
    PrintWriter out = response.getWriter();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(StringUtils.equals(username,"admin") && StringUtils.equals(password,"admin")){
      session.setAttribute("username",username);
      model.addAttribute("user",username);
      return "redirect:/getHomePage";
    }else {
      out.println("Fails login");
    }
    return "LoginPage";
  }
}
