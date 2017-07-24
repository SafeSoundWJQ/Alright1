package org.fkit.mapper;

import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Manager;

public interface ManagerMapper {
	
	//管理员登陆
	@Select("select * from tb_manager where loginname=#{loginname} and password=#{password}")
	Manager selectManager(Manager manager);
}
