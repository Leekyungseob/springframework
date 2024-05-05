package com.mycompany.springframework.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.mybatis.Ch13AccountDao;
import com.mycompany.springframework.dto.Ch15Account;

import lombok.extern.slf4j.Slf4j;

//관리객체를 만들기위해 Service어노테이션을 붙임.
@Service
@Slf4j
public class Ch15Service {
	@Autowired
	private Ch13AccountDao accountDao;
	
	
	public List<Ch15Account> getAccountList() {
		List<Ch15Account> accountList = accountDao.selectAll();
		return accountList;
	}
	
	//출금작업,입금작업 둘중 하나만 문제가 생겨도 둘다 실패처리를 하기 위한 transaction 
	@Transactional
	public void transfer(int fromAno, int toAno, int amount) {
		//출금 작업
		Ch15Account fromAccount = accountDao.selectByAno(fromAno);
		if(fromAccount == null) {
			throw new RuntimeException("출금 계좌 없음");
		}
		//기존 잔금에다가 출금액만큼 빼준다.
		fromAccount.setBalance(fromAccount.getBalance()-amount);
		accountDao.updateBalance(fromAccount);
		
		//출금액이 충분한지 따지는 코드가 필요함
		
		//입금 작업
		Ch15Account toAccount = accountDao.selectByAno(toAno);
		if(toAccount == null) {
			throw new RuntimeException("입금 계좌 없음");
		}
		//기존 잔금에다가 입금액만큼 더해준다.
		toAccount.setBalance(toAccount.getBalance()+amount);
		accountDao.updateBalance(toAccount);
		
		
	}
}
