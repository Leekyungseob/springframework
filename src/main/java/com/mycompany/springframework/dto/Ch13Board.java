package com.mycompany.springframework.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Ch13Board {
	private int bno;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private String mid;
	private int bhitcount;
	private String battachoname;
	private String battachsname;
	private String battachtype;
	private byte[] battachdata; //블락 타입은 바이트배열로 대체가능
	
	private MultipartFile battach;
}
