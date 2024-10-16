//package org.example.springbootoauth.controller;
//
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.annotation.AuthenticationPrincipal;
//import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
//import org.springframework.security.oauth2.core.user.OAuth2User;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//@Controller
//public class LoginController {
//
//    // Handle GET request for login page
//    @GetMapping("/oauth/login")
//    public String login() {
//        return "login"; // Return the login view
//    }
//
//    // Handle GET request for successful login
//    @GetMapping("/loginSuccess")
//    public String profile(OAuth2AuthenticationToken token, Model model) {
//        model.addAttribute("name",token.getPrincipal().getAttribute("name"));
//        model.addAttribute("email",token.getPrincipal().getAttribute("email"));
//        model.addAttribute("photo",token.getPrincipal().getAttribute("photo"));
//        return "loginSuccess"; // Return the login success view
//    }
//
//    // Handle GET request for logout success
//    @GetMapping("/logout")
//    public String logout() {
//        return "logout"; // Return the logout success view
//    }
//}
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
