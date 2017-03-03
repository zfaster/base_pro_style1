package com.sys.service.base;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;

import com.sys.system.PagerModel;

public interface DAO<T> {
	/**
	 * 锟斤拷锟斤拷实锟斤拷
	 * @param entity
	 */
	public void save(T entity);
	/**
	 * 锟斤拷锟斤拷实锟斤拷
	 * @param entity
	 */
	public void update(T entity);
	/**
	 * 删锟斤拷实锟斤拷
	 * @param entityId 锟斤拷锟斤拷ID
	 */
	public void delete(Serializable... entityId);
	/**
	 * 锟斤拷取实锟斤拷
	 * @param entityClass 实锟斤拷锟斤拷
	 * @param entityId 实锟斤拷ID
	 * @return
	 */
	public T find(Serializable entityId);

	/**
	 * 锟斤拷取实锟斤拷
	 * @param entityClass 实锟斤拷锟斤拷
	 * @param entityId 实锟斤拷ID
	 * @return
	 */
	public T get(Serializable entityId);
	
	/**
	 * 锟斤拷取实锟斤拷锟杰硷拷录锟斤拷
	 * @return 锟杰硷拷录锟斤拷
	 */
	public long getCount();
	
	public PagerModel<T> findScrollData(
			LinkedHashMap<String, String> orderBy,String whereSql,Object[] queryParams);

	public PagerModel<T> findScrollData(
			String whereSql,Object[] queryParams);
	
	public PagerModel<T> findScrollData(
			LinkedHashMap<String, String> orderBy);
	
	public PagerModel<T> findScrollData();
	/**
	 * 锟睫凤拷页锟斤拷锟揭筹拷锟斤拷锟斤拷锟斤拷锟�
	 * @return
	 */
	public List<T> findScrollDataNoPager();
	
	public List<T> findScrollDataNoPager(
			LinkedHashMap<String, String> orderBy, String whereSql,
			Object[] queryParams);
}
