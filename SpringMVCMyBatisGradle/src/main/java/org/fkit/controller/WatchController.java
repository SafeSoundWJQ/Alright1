package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Watch;
import org.fkit.service.WatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WatchController {
	@Autowired
	private WatchService watchService;
	//展示商品
	@RequestMapping("/showGoods")
	public String showGoods(Model m){
		List<Watch> list = watchService.selectAllGoods();
		m.addAttribute("watchlist", list);
		return "products";
	}
	
	
	
	
}
