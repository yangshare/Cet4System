package com.cet4system.domain;

/*
 * 需要被批改表
 */
public class Needmarking {
	private String candidateNo;

	private String answerOfcomprehensive;// 作文答案
	private String answerOftranslate;// 翻译答案
	private String status;// 状态
	private String time;// 批改时间
	private int testid;

	public void setTestid(int testid) {
		this.testid = testid;
	}

	public int getTestid() {
		return testid;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCandidateNo() {
		return candidateNo;
	}

	public void setCandidateNo(String candidateNo) {
		this.candidateNo = candidateNo;
	}

	public String getAnswerOfcomprehensive() {
		return answerOfcomprehensive;
	}

	public void setAnswerOfcomprehensive(String answerOfcomprehensive) {
		this.answerOfcomprehensive = answerOfcomprehensive;
	}

	public String getAnswerOftranslate() {
		return answerOftranslate;
	}

	public void setAnswerOftranslate(String answerOftranslate) {
		this.answerOftranslate = answerOftranslate;
	}

}
