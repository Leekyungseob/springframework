package com.mycompany.springframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class HomeController {
   @RequestMapping("")
   public String index() {
      log.info("index1() 실행");
      log.info("index2() 실행");
      log.info("index3() 실행");
      log.info("index4() 실행");
      log.info("index5() 실행");
     
      return "home";
   }

}