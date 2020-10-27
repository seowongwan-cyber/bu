package com.swg.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.swg.blog.vo.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.swg.blog.MemberMapper";
	
	
	@Override
	public void create(MemberVO vo) throws Exception {
		
		session.insert(namespace + ".create", vo);

	}

	@Override
	public MemberVO read(Integer unum) throws Exception {
		
		return session.selectOne(namespace +".read", unum);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		session.update(namespace+".update", vo);

	}

	@Override
	public void delete(Integer unum) throws Exception {
		
		session.delete(namespace+".delete", unum);
	}

	@Override
	public List<MemberVO> listAll() throws Exception {

		return session.selectList(namespace+".listAll");
		
	}
	
	@Override
	public MemberVO login(MemberVO vo) throws Exception{
		return session.selectOne(namespace + ".login", vo);
	}
	
	@Override
	public int idCheck(String userid){
		int result = session.selectOne("memberMapper.idCheck", userid);
		return result;
	}
	

}
