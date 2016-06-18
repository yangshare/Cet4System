package com.cet4system.domain;

/*
 * 阅读标题表
 */
public class Titlesofreading {
	private int id;
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

	private String title;

}
