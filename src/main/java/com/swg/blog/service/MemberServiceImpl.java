package com.swg.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swg.blog.dao.MemberDAO;
import com.swg.blog.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Autowired
	MemberDAO daos;
	
	@Override
	public void regist(MemberVO member) throws Exception {
		dao.create(member);
	}
	@Override
	public MemberVO read(Integer unum) throws Exception {
		return dao.read(unum);
	}
	@Override
	public void modify(MemberVO member) throws Exception {
	
		dao.update(member);
	}

	@Override
	public void remove(Integer unum) throws Exception {	
		dao.delete(unum);
	}

	@Override
	public List<MemberVO> listAll() throws Exception {	
		return dao.listAll();
	}
	
	@Override
	public MemberVO login(MemberVO vo) throws Exception{
		return dao.login(vo);
	}
	
	@Override
	public int idCheck(String userid){
		int result = daos.idCheck(userid);
		return result;
	}

}
