package com.swg.blog.dao;

import java.util.List;

import com.swg.blog.vo.MemberVO;

public interface MemberDAO {

	public void create(MemberVO vo) throws Exception;
	public MemberVO read(Integer unum) throws Exception;
	public void update(MemberVO vo) throws Exception;
	public void delete(Integer unum) throws Exception;
	public List<MemberVO> listAll() throws Exception;
	public MemberVO login(MemberVO vo) throws Exception;
	public int idCheck(String userid);
}
