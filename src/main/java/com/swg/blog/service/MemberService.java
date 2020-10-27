package com.swg.blog.service;

import java.util.List;

import com.swg.blog.vo.MemberVO;


public interface MemberService {
	
	public void regist(MemberVO member) throws Exception;
	public MemberVO read(Integer unum) throws Exception;
	public void modify(MemberVO member) throws Exception;
	public void remove(Integer unum) throws Exception;
	public List<MemberVO> listAll() throws Exception;
	public MemberVO login(MemberVO vo) throws Exception;
	public int idCheck(String userid);
}
