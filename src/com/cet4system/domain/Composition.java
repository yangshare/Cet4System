package com.cet4system.domain;

/*
 * 作文表
 */
public class Composition {

	private int id;// 编号
	private String title;// 标题
	private int testid;

	public void setTestid(int testid) {
		this.testid = testid;
	}

	public int getTestid() {
		return testid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
