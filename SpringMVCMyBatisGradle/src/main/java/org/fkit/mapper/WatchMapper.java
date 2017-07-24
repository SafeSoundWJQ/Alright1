package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Watch;

public interface WatchMapper {
	//添加商品
	@Insert("insert into tb_goods(name,price,count,remark,image) values(#{name},#{price},#{count},#{remark},#{image})")
	@Options(useGeneratedKeys=true ,keyProperty="id")
	void insertGoods(Watch watch);
	
	//展示商品
	@Select("select * from tb_goods ")
	List<Watch> selectAllGoods();
	
	//删除商品
	@Delete("delete from tb_goods where id =#{id}")
	void deleteGoodById(@Param("id")int id);
	
	//查找商品
	@Select("select * from tb_goods where id=#{id}")
	Watch selectWatchById(@Param("id") int id);
	
	//更新商品
	@Update("update tb_goods set name=#{name},price=#{price},count=#{count},remark=#{remark} where id=#{id}")
	void updateGood(Watch watch);
}
