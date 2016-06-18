package com.cet4system.service;

import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface ObjectService {

	// 添加对象
	public void save(Object obj);

	// 获取最大ID
	public int getMaxID(String table);

	// 通过id查找对象
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public Object getObjectById(Class cls, int id);

	// 修改对象
	public boolean update(Object obj);

	//删除对象
	public void delete(String table ,String testid);
	// 删除对象通过id
	@SuppressWarnings("unchecked")
	public void delete(Class cls, int id);

	// 获取对象列表
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public List getObject(String table);

	// 获取对象列表
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public List getObjectByTestid(String table, int cond);

	// 获取对象列表通过ID
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public List getObject(String table, String id);

	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public Object getObjectById(Class cls, String str);

	// wu~~
	@SuppressWarnings("unchecked")
	public List check(String type, String username, String password);

	@SuppressWarnings("unchecked")
	public void delete(Class cls, String candidateNo);

	@SuppressWarnings("unchecked")
	public List validation(String table, String candidateNo);

	@SuppressWarnings("unchecked")
	public List page(String table, int first, int perPageRow);
}