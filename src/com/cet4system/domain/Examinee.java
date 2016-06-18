package com.cet4system.domain;





/*
 * 考生信息表
 */
public class Examinee {

	private String name;//考生名
	private String candidateNo;//准考证号
	private String sex;//性别
	private String examineeOfSchool;//所属院校
	private String image;//照片
	private double writingGrade;//写作分数
	private double listeningGrade;//听力分数
	private double readingGrade;//阅读分数
	private double comprehensivingGrade;//综合
	
	private double total;//总分
	public String getCandidateNo() {
		return candidateNo;
	}
	public void setCandidateNo(String candidateNo) {
		this.candidateNo = candidateNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getExamineeOfSchool() {
		return examineeOfSchool;
	}
	public void setExamineeOfSchool(String examineeOfSchool) {
		this.examineeOfSchool = examineeOfSchool;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public double getWritingGrade() {
		return writingGrade;
	}
	public void setWritingGrade(double writingGrade) {
		this.writingGrade = writingGrade;
	}
	public double getListeningGrade() {
		return listeningGrade;
	}
	public void setListeningGrade(double listeningGrade) {
		this.listeningGrade = listeningGrade;
	}
	public double getReadingGrade() {
		return readingGrade;
	}
	public void setReadingGrade(double readingGrade) {
		this.readingGrade = readingGrade;
	}
	public double getComprehensivingGrade() {
		return comprehensivingGrade;
	}
	public void setComprehensivingGrade(double comprehensivingGrade) {
		this.comprehensivingGrade = comprehensivingGrade;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}


	
	
}
