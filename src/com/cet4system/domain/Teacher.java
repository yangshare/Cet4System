package com.cet4system.domain;
/*
 * 评卷教师信息表
 */
public class Teacher {

	private int id;
	private String teacherName;//教师名
	private String password;//登录密码
	private String teacherOfSchool;//所属院校
	private String teacherImage;//照片
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTeacherOfSchool() {
		return teacherOfSchool;
	}
	public void setTeacherOfSchool(String teacherOfSchool) {
		this.teacherOfSchool = teacherOfSchool;
	}
	public String getTeacherImage() {
		return teacherImage;
	}
	public void setTeacherImage(String teacherImage) {
		this.teacherImage = teacherImage;
	}
	


}
