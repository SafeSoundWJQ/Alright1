package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Watch;
import org.fkit.mapper.WatchMapper;
import org.fkit.service.WatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("watchService")
public class WatcheServiceImpl implements WatchService {
	@Autowired
	private WatchMapper watchMapper;
	
	//添加商品
	@Override
	public void insertGoods(Watch watch) {
		watchMapper.insertGoods(watch);
	}
	//展示商品
	@Override
	public List<Watch> selectAllGoods() {
		return watchMapper.selectAllGoods();
	}
	//删除商品
	@Override
	public void deleteGoodById(int id) {
		watchMapper.deleteGoodById(id);
	}
	
	//通过ID查找商品
	@Override
	public Watch selectWatchById(int id) {
		return watchMapper.selectWatchById(id);
	}
	//更新商品
	@Override
	public void updateGood(Watch watch) {
		watchMapper.updateGood(watch);
	}
	

}
