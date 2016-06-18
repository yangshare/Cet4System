package com.cet4system.domain;

/*
 * 复合式听写答案表
 */
public class Compoundchoosewords {
	private int id;// 编号
	private String answer;// 复合式听写答案
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

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}
