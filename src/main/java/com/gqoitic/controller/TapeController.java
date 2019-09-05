package com.gqoitic.controller;

import com.gqoitic.domain.Post;
import com.gqoitic.domain.User;
import com.gqoitic.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.Objects;

@Controller
public class TapeController {
    @Autowired
    private PostRepository postRepository;

    @GetMapping("/")
    public String start(){
        return "index";
    }

    @GetMapping("/tape")
    public String main(
            @RequestParam(required = false, defaultValue = "") String filter,
            Model model)
    {
        Iterable<Post> posts = postRepository.findAll();

        if(!Objects.isNull(filter) && !filter.isEmpty()){
            posts = postRepository.findByTag(filter);
        } else {
            posts = postRepository.findAll();
        }

        model.addAttribute("posts", posts);
        model.addAttribute("filter", filter);

        return "tape";
    }

    @GetMapping("addPost")
    public String addPost(){
        return "addPost";
    }

    @PostMapping("addPost")
    public String add(@AuthenticationPrincipal User user,
                      @RequestParam String text,
                      @RequestParam String tag,
                      Map<String, Object> model)
    {
        Post post = new Post(text, tag, user);
        postRepository.save(post);

        Iterable<Post> posts = postRepository.findAll();
        model.put("posts", posts);

        return "redirect:tape";
    }
}