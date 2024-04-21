package com.mycompany.springframework.dto;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch04SignupFormValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {		
		log.info("실행");
		return Ch04SignupForm.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Ch04SignupForm signupForm = (Ch04SignupForm) target;
		
		//아이디 검사
		String mid = signupForm.getMid();
		if(mid==null || mid.equals("")) {
			errors.rejectValue("mid", null, "아이디는 반드시 입력해야 합니다.");
		} else if(mid.length() < 6 || mid.length() > 12) {
			errors.rejectValue("mid", null, "아이디는 6자 이상, 12자 이하로 입력해야 합니다.");
		}
		
		
		//비밀번호 검사
		String mpassword = signupForm.getMpassword();
		String pattern1 = "(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}";
		if(mpassword==null || mpassword.equals("")) {
			errors.rejectValue("mpassword", null, "비밀번호는 반드시 입력해야 합니다.");
		} else if(mpassword.length() < 8 || mpassword.length() > 15) {
			errors.rejectValue("mpassword", null, "비밀번호는 8자이상 15자 이하로 입력 되어야 합니다.");
		}else if(!Pattern.matches(pattern1, mpassword)) {
			errors.rejectValue("mpassword", null, "비밀번호는 알파벳 대소문자 및 숫자를 포함해야 합니다..");
		}
		
		
		//이름
		String mname = signupForm.getMname();
		String pattern2 = "[가-힣]{2,6}";
		if(mname==null || mname.equals("")) {
			errors.rejectValue("mname", null, "이름은 반드시 입력해야 합니다.");
		} else if(mname.length() < 2 || mname.length() > 6) {
			errors.rejectValue("mname", null, "이름은 2자 이상, 6자 이하로 입력해야 합니다.");
		} else if(!Pattern.matches(pattern2, mname)) {
			errors.rejectValue("mname", null, "이름은 한글만 가능합니다..");
		}
		
		//전화번호
		String mphonenumber = signupForm.getMphonenumber();
		String pattern3= "010-\\d{3,4}-\\d{4}";
		if(mphonenumber==null || mphonenumber.equals("")) {
			errors.rejectValue("mphonenumber", null, "전화번호는 반드시 입력해야 합니다.");
		} else if(!Pattern.matches(pattern3, mphonenumber)) {
			errors.rejectValue("mphonenumber", null, "전화번호 양식 예) 010-123-1234, 010-1234-1234");
		}
		
		//이메일
		String memail = signupForm.getMemail();
		String pattern4= "\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w{2,3})";
		if(memail==null || memail.equals("")) {
			errors.rejectValue("memail", null, "이메일은 반드시 입력해야 합니다.");
		} else if(!Pattern.matches(pattern4, memail)) {
			errors.rejectValue("memail", null, "이메일 양식에 맞지 않습니다..");
		}
	}
	
}
