package org.amperca.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	/*
	 * IMPORTANT!
	 * Click Maven dependencies under Order and Export
	 * 
	 */
    @RequestMapping("/hello")
    public String helloWorld(Model model) {
		System.out.println("TESTING!!!");
        model.addAttribute("message", "Hello World!");
        return "view";
    }

}