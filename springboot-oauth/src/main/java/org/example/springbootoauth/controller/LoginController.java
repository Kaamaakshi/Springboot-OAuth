package org.example.springbootoauth.controller;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class LoginController {

    @GetMapping("/loginSuccess")
    public String profile(OAuth2AuthenticationToken token,Model model) {
        if (token == null || !token.isAuthenticated()) {
            return "redirect:/"; // Redirect to login page if not authenticated
        }
        model.addAttribute("name", token.getPrincipal().getAttribute("name"));
        model.addAttribute("email", token.getPrincipal().getAttribute("email"));
        model.addAttribute("photo", token.getPrincipal().getAttribute("picture")); // Assuming Google or provider has a 'picture' attribute
        return "loginSuccess"; // Return the login success view
    }

    //  logout success
    @GetMapping("/logoutSuccess")
    public String logout(Model model) {
        model.addAttribute("message", "You have successfully logged out.");
        return "logout";
    }
}
