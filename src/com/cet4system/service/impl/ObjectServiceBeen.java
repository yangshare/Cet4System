package com.cet4system.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cet4system.service.ObjectService;

@Transactional
public class ObjectServiceBeen implements ObjectService {
	@Resource
	private SessionFactory sessionFactory;

	// 添加对象
	public void save(Object obj) {
		sessionFactory.getCurrentSession().save(obj);
	}

	// 通过id查找对象
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public Object getObjectById(Class cls, int id) {
		return (Object) sessionFactory.getCurrentSession().get(cls, id);
	}

	// 获取最大ID
	@SuppressWarnings("unchecked")
	public int getMaxID(String table) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"select max(id) maxid from " + table).setResultTransformer(
				Transformers.ALIAS_TO_ENTITY_MAP);
		Map map = (Map) query.list().get(0);
		int id = Integer.parseInt(map.get("maxid").toString());
		System.out.println(id);
		return id;
	}

	// 修改对象
	public boolean update(Object obj) {
		try {
			sessionFactory.getCurrentSession().update(obj);

		} catch (Exception e) {
			return false;
		}
		return true;
	}
	// 删除对象
	public void delete(String table ,String testid) {
		sessionFactory.getCurrentSession().createQuery(
				"delete from "+table+" where testid="+testid).executeUpdate();
	}

	// 删除对象通过id
	@SuppressWarnings("unchecked")
	public void delete(Class cls, int id) {
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(cls, id));
	}

	// 获取对象列表
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public List getObject(String table) {
		return sessionFactory.getCurrentSession().createQuery("from " + table)
				.list();
	}

	// 获取对象列表
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	@SuppressWarnings("unchecked")
	public List getObjectByTestid(String table, int cond) {
		return sessionFactory.getCurrentSession().createQuery(
				"from " + table + " where testid=" + cond).list();
	}

	// 获取对象列表通过ID
	@SuppressWarnings("unchecked")
	public List getObject(String table, String id) {
		if (table.equals("Testname")) {
			return sessionFactory.getCurrentSession().createQuery(
					"from " + table + " where id=" + id).list();
		} else {
			return sessionFactory.getCurrentSession().createQuery(
					"from " + table + " where testid=" + id).list();
		}

	}

	// 通过字符串查询对象
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public Object getObjectById(Class cls, String str) {
		return (Object) sessionFactory.getCurrentSession().get(cls, str);
	}

	// 后台登录验证
	@SuppressWarnings("unchecked")
	public List check(String type, String username, String password) {
		String hql = null;
		if (type.equals("管理员")) {
			hql = "from Administor where name = ? and password = ?";
		}
		if (type.equals("教师")) {
			hql = "from Teacher where teacherName = ? and password = ?";
		}
		List list = sessionFactory.getCurrentSession().createQuery(hql)
				.setString(0, username).setString(1, password).list();
		return list;
	}

	// 考生登录验证
	@SuppressWarnings("unchecked")
	public List validation(String table, String candidateNo) {
		List list = sessionFactory.getCurrentSession().createQuery(
				"from " + table + " where candidateNo = ?").setString(0,
				candidateNo).list();
		return list;
	}

	// 通过考号删除对象
	@SuppressWarnings("unchecked")
	public void delete(Class cls, String candidateNo) {
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(cls, candidateNo));
	}

	// 分页显示
	@SuppressWarnings("unchecked")
	public List page(String table, int first, int perPageRow) {
		System.out.println("分页显示");
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from " + table);
		q.setFirstResult(first);
		q.setMaxResults(perPageRow);// 每页显示的记录数
		return q.list();
	}

}
