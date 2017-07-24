package org.fkit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.fkit.domain.Manager;
import org.fkit.domain.Watch;
import org.fkit.service.ManagerService;
import org.fkit.service.WatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	@Autowired
	@Qualifier("managerService")
	private ManagerService managerService;
	
	@Resource(name="watchService")
	private WatchService watchService;
	
	@RequestMapping("/managerLogin")
	public String managerLogin(Manager manager,Model model){
		
		Manager m = managerService.selectManager(manager);
		if(m!=null){
			return "redirect:/goodsmanager";
		}
		model.addAttribute("message", "登录名或密码错误，请重新登陆！！");
		return "managerlogin";
	}
	
	//展示商品
		@RequestMapping("/goodsmanager")
		public String goodsmanager(Model m){
			List<Watch> list = watchService.selectAllGoods();
			m.addAttribute("watchlist", list);
			return "goodmanager";
		}
		
		//删除商品
		@RequestMapping("/deleteGoods/{id}")
		public String deleteGoods(@PathVariable int id){
			watchService.deleteGoodById(id);
			return "redirect:/goodsmanager";
		}
		
		//添加商品
		@RequestMapping("/addGoods")
		public String addGoods(Watch watch){
			
			watchService.insertGoods(watch);
			return "redirect:/goodsmanager";
		}
		
		@RequestMapping("/goUpdateGoods/{id}")
		public String goUpdateGoods(@PathVariable int id,Model model){
			Watch watch = watchService.selectWatchById(id);
			model.addAttribute("good", watch);
			return "updateGood";
		}
		
		@RequestMapping("/updategoods")
		public String updateGoods(Watch watch){
			
			
			
			watchService.updateGood(watch);
			return "redirect:/goodsmanager";
		}
		
}
