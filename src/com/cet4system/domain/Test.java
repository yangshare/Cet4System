package com.cet4system.domain;

/**
 * 考试管理
 * 
 * @author hyl
 * 
 */
public class Test {

	private int id; // ID
	private String testname; // 考试名
	private String time; // 考试时间
	private String numarea; // 考号区间
	private String testteachers; // 监考教师
	private String position; // 考室
	private Testname testid; // 考试科目对象
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTestname() {
		return testname;
	}

	public void setTestname(String testname) {
		this.testname = testname;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getNumarea() {
		return numarea;
	}

	public void setNumarea(String numarea) {
		this.numarea = numarea;
	}

	public String getTestteachers() {
		return testteachers;
	}

	public void setTestteachers(String testteachers) {
		this.testteachers = testteachers;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Testname getTestid() {
		return testid;
	}

	public void setTestid(Testname testid) {
		this.testid = testid;
	}

}
