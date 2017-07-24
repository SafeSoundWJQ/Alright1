package org.fkit.service;

import java.util.List;

import org.fkit.domain.Watch;

public interface WatchService {
	//添加商品
	
	void insertGoods(Watch watch);
	
	//展示商品
	
	List<Watch> selectAllGoods();
	
	//删除商品
	
	void deleteGoodById(int id);
	
	
	//查找商品
		
	Watch selectWatchById(int id);
	
	//更新商品
	void updateGood(Watch watch);
	
}
