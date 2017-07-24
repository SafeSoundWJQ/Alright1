package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Shopcar;

public interface ShopcarMapper {
	//添加到购物车
	@Insert("insert into tb_shopcar(goods_id,name,count,total) values(#{goods_id},#{name},#{count},#{total})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void insertShopcar(Shopcar shopcar);
	
	//从购物车删除
	@Delete("delete from tb_shopcar where id = #{id}")
	void deleteShopcarById(@Param("id") int id);
	
	//展示购物车商品
	@Select("select * from tb_shopcar")
	List<Shopcar> selectAll();
	
	//通过商品ID查找购物车商品  
	@Select("select * from tb_shopcar where goods_id=#{goods_id}")
	Shopcar selectById(@Param("goods_id") int id);
	//更新购物车商品数量
	@Update("update tb_shopcar set count =#{count} where id =#{id}")
	void updateShopcar(Shopcar shopcar);
}
