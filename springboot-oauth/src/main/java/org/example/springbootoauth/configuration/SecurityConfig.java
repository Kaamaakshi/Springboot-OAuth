package org.example.springbootoauth.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
public class SecurityConfig {

    // Bean for password encoding
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // Security filter chain configuration
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                // Authorization configuration
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/" , "/oauth2/**")
                        .permitAll() // Allow public access to these URLs
                        .anyRequest().permitAll() // Allow all other requests (should be reviewed for security)
                )
                // OAuth2 login configuration
                .oauth2Login(oauth2 -> oauth2
                        .loginPage("/oauth/login") // Custom login page
                        .defaultSuccessUrl("/loginSuccess", true) // Redirect after successful login
                        .failureUrl("/auth/login?error=true") // Redirect on login failure
                        .permitAll() // Allow public access to login page
                )
                // Logout configuration
                .logout(logout -> logout
                        .logoutUrl("/logout") // Logout URL
                        .logoutSuccessUrl("/logoutSuccess") // Redirect after logout
                        .permitAll()
                )
                // CSRF protection disabled
                .csrf(csrf -> csrf.disable());

        return http.build();
    }
}
