package com.mega.mvcProjectTest;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component // ShopDAO dao = new ShopDAO(); 한개만 객체 생성!, 싱글톤!
public class ScommentDAO {
	// myBatis싱글톤 주소를 주입!
	@Autowired
	SqlSessionTemplate my;

	public void create(ScommentVO bag) throws Exception {
		my.insert("scomment.insert", bag);
	}
	
	public List<ScommentVO> all() {
		return my.selectList("scomment.all");	
	}
	
	public void delete(ScommentVO bag) {
		my.delete("scomment.delete", bag);
	}
}
