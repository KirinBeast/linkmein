package abc.abc.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import abc.abc.service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider auth = new DaoAuthenticationProvider();

        auth.setUserDetailsService(userDetailsService());
        auth.setPasswordEncoder(passwordEncoder());

        return auth;
    }
	
	@Bean
	public SecurityFilterChain configure(HttpSecurity http) throws Exception {
		
		http
		.authorizeHttpRequests()
        .antMatchers(HttpMethod.GET, "/").permitAll()
        .antMatchers(HttpMethod.GET, "/assets/**").permitAll()
        .antMatchers(HttpMethod.GET, "/about").permitAll()
        .antMatchers(HttpMethod.GET, "/contact").permitAll()
        .antMatchers(HttpMethod.GET, "/signup").permitAll()
        .antMatchers(HttpMethod.POST, "/process_signup").permitAll()
        .antMatchers(HttpMethod.GET, "/profile").permitAll()
        .antMatchers(HttpMethod.GET, "/verify").permitAll()
        .antMatchers(HttpMethod.GET, "/verify-fail").permitAll()
        .antMatchers(HttpMethod.GET, "/forgot-password").permitAll()
        .antMatchers(HttpMethod.POST, "/forgot-password").permitAll()
        .antMatchers(HttpMethod.GET, "/verify-reset-password").permitAll()
        .antMatchers(HttpMethod.GET, "/reset-password").permitAll()
        .antMatchers(HttpMethod.POST, "/reset-password").permitAll()
        
        .anyRequest().authenticated()
        .and()
    .formLogin()
        .loginPage("/signin")
        .loginProcessingUrl("/login")
        .usernameParameter("email")
        .defaultSuccessUrl("/dashboard")
        .permitAll()
        .and()
    .logout()
        .logoutSuccessUrl("/signin")
        .permitAll();

		
		return http.build();
	}

}
