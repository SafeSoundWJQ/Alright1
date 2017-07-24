package org.fkit.controller;



import java.util.List;

import javax.annotation.Resource;

import org.fkit.domain.Shopcar;
import org.fkit.domain.Watch;
import org.fkit.service.ShopcarService;
import org.fkit.service.WatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopcarController {
	@Autowired
	@Qualifier("shopcarService")
	private ShopcarService shopcarService;
	
	@Resource(name="watchService")
	private WatchService watchService;
	
	
	//添加到购物车
	@RequestMapping("/addShopcar/{id}")
	public String addShopcar(@PathVariable int id){
		Shopcar shopcarGood = shopcarService.selectById(id);
		if(shopcarGood==null){
			Watch watch = watchService.selectWatchById(id);
			Shopcar shopcar = new Shopcar();
			shopcar.setName(watch.getName());
			shopcar.setGoods_id(watch.getId());
			shopcar.setTotal(watch.getPrice());
			shopcar.setCount(1);
			shopcarService.insertShopcar(shopcar);
			return "redirect:/showShopcar";
		}else{
			shopcarGood.setCount(shopcarGood.getCount()+1);
			shopcarService.updateShopcar(shopcarGood);
			return "redirect:/showShopcar";
			
		}
	}
	//展示购物车商品
	@RequestMapping("/showShopcar")
	public String showShopcar(Model m){
	List<Shopcar> list = shopcarService.selectAll();
	m.addAttribute("shopcarlist", list);
		return "shopcar";
	}
	
	//从购物车删除
	@RequestMapping("/deleteShopcar/{id}")
	public String deleteShopcar(@PathVariable int id){
		shopcarService.deleteShopcarById(id);
		return "redirect:/showShopcar";
	}
}
