package org.amperca.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
    public String login(
            @RequestParam(value="error", required = false)
            String error,
            @RequestParam(value="logout", required = false)
            String logout,
            Model model, HttpServletRequest request, HttpServletResponse response){

        if(error != null){
            model.addAttribute("error", "The email and password you entered don't match.");
        }

        if (logout !=null){
            model.addAttribute("msg", "You have been logged out successfully");
            
            // logging out seems to have an issue with adding the code below.
            // http://websystique.com/spring-security/spring-security-4-logout-example/
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if (auth != null){    
                new SecurityContextLogoutHandler().logout(request, response, auth);
            }
        }

        return "login";
    }

}
