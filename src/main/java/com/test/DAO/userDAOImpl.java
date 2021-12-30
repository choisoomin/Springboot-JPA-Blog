package com.test.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.VO.UserVO;

@Repository
public class userDAOImpl implements userDAO {
	
	@Autowired
	private SqlSession sqlSession;  // mybatis에서 제공한 객체 
	private static String mapperquery ="com.test.DAO.userDAO";
	
	@Override
	public void userinput(UserVO uservo) throws Exception {
		sqlSession.insert(mapperquery + ".userinput" , uservo);
	}




	
}
