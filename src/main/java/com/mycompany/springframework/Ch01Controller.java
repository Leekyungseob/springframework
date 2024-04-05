package com.mycompany.springframework;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch01")
public class Ch01Controller {
	@RequestMapping("")
	public String index() {
		log.info("index() 실행");
		return "ch01/index";
	}
}