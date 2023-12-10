package com.theara.controller;

import com.theara.entity.Movie;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
  @GetMapping("/getHomePage")
  public String getHomePage(){
    return "HomePage";
  }
}
