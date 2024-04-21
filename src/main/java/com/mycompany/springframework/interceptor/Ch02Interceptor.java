package com.mycompany.springframework.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch02Interceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandle(); 실행");
		
		//return true: 다음 인터셉터를 실행하거나 Controller의 요청 매핑 메소드가 실행
		//return false: Controller의 요청 매핑 메소드가 실행되지 않음
		return true;
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("postHandle(); 실행");
	}
	
	
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("afterCompletion(); 실행");
	}
	
	
	@GetMapping("/testAuthInterceptor1")
	public String testAuthInterceptor1() {
		log.info("testAuthInterceptor1() 실행");
		return "ch02/testAuthInterceptor1";
	}
	
	@GetMapping("/testAuthInterceptor2")
	@Auth
	public String testAuthInterceptor2() {
		log.info("testAuthInterceptor2() 실행");
		return "ch02/testAuthInterceptor2";
	}
	

}
