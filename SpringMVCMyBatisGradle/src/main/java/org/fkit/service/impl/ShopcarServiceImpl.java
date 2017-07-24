package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Shopcar;
import org.fkit.mapper.ShopcarMapper;
import org.fkit.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("shopcarService")
public class ShopcarServiceImpl implements ShopcarService {
	@Autowired
	private ShopcarMapper shopcarMapper;
	
	//添加到购物车
	@Override
	public void insertShopcar(Shopcar shopcar) {
		shopcarMapper.insertShopcar(shopcar);
	}
	//从购物车删除
	@Override
	public void deleteShopcarById(int id) {
		shopcarMapper.deleteShopcarById(id);
	}
	//展示购物车商品
	@Override
	public List<Shopcar> selectAll() {
		return shopcarMapper.selectAll();
	}
	@Override
	public Shopcar selectById(int id) {
		return shopcarMapper.selectById(id);
	}
	@Override
	public void updateShopcar(Shopcar shopcar) {
		shopcarMapper.updateShopcar(shopcar);
	}
	
	
}
