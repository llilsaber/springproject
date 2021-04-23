package com.mega.mvcProjectTest;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShopDAO {

	@Autowired
	SqlSessionTemplate my;

	public void create(ShopVO bag) throws Exception {
		my.insert("shop.insert", bag);
	}
	
	public List<ShopVO> all() {
		return my.selectList("shop.all");	
	}
	
	public void update(ShopVO bag) throws Exception {
		my.update("shop.update", bag);
	}
	
	public void upgrade(ShopVO bag) throws Exception {
		my.update("shop.upgrade", bag);
	}
}
