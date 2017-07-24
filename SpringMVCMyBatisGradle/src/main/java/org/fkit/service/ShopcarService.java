package org.fkit.service;


import java.util.List;

import org.fkit.domain.Shopcar;

public interface ShopcarService {
	//添加到购物车
	void insertShopcar(Shopcar shopcar);
	
	//从购物车删除
	void deleteShopcarById( int id);
	
	//展示购物车商品
	List<Shopcar> selectAll();
	
	//通过商品ID查找购物车商品
	Shopcar selectById(int id);
	
	//更新购物车商品数量
	void updateShopcar(Shopcar shopcar);
}
