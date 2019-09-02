package com.gqoitic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class TapeController {

    @GetMapping("/")
    public String greeting(Map<String, Object> model)
    {
        model.put("info", "tape page");
        return "tape";
    }

    @GetMapping("addPost")
    public String addPost(Map<String, Object> model){
        model.put("some", "this is add post page");
        return "addPost";
    }

}