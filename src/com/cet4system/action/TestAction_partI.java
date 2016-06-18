package com.cet4system.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.cet4system.domain.Composition;
import com.cet4system.domain.Compoundchoosewords;
import com.cet4system.domain.Examinee;
import com.cet4system.domain.Listeningmaterial;
import com.cet4system.domain.Needmarking;
import com.cet4system.domain.Optionoflistening;
import com.cet4system.domain.Optionsofreading;
import com.cet4system.domain.Testname;
import com.cet4system.domain.Titlesofreading;
import com.cet4system.domain.Translate;
import com.cet4system.service.ObjectService;

public class TestAction_partI {
	@Resource
	ObjectService objectService;
	private List<Testname> testnames;
	private List<Composition> compositions;
	private List<Titlesofreading> titlesofreadings;
	private List<Listeningmaterial> listeningmaterials;
	private List<Optionoflistening> optionoflistenings;
	private List<Compoundchoosewords> compoundchoosewords;
	private List<Optionsofreading> optionsofreadings;
	private List<Translate> translates;
	private String candidateNo;
	String result = "";// 定义返回值
	HttpSession session;
	int testid;

	/**
	 * 获得试题的第一部分
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getpartI() {
		// candidateNo=request.getParameter("candidateNo");
		// System.out.println(candidateNo);

		/* 此次应该是可以点击开始答题时，自动给session赋值testid */
		session = ServletActionContext.getRequest().getSession();
		session.setAttribute("testid", 7);

		testid = Integer.parseInt(session.getAttribute("testid").toString());

		List<Needmarking> needmarkings = objectService.validation(
				"Needmarking", candidateNo);
		if (needmarkings.size() != 0) {
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("error",
					"<script>alert('你已经答过题了，不可重复答题!');</script>");
			return "back";

		} else {
			testnames = objectService.getObject("Testname");
			compositions = objectService.getObjectByTestid("Composition",
					testid);
			titlesofreadings = objectService.getObjectByTestid(
					"Titlesofreading", testid);
			optionsofreadings = objectService.getObjectByTestid(
					"Optionsofreading", testid);
			result = "getpartI";
			return result;
		}
	}

	/**
	 * 第一部分评分 获得试题的第二部分
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getpartII() {

		session = ServletActionContext.getRequest().getSession();
		testid = Integer.parseInt(session.getAttribute("testid").toString());

		// 快速阅读评分
		double sum = 0;
		Optionsofreading option1 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 1);
		Optionsofreading option2 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 2);
		Optionsofreading option3 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 3);
		Optionsofreading option4 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 4);
		Optionsofreading option5 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 5);
		Optionsofreading option6 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 6);
		Optionsofreading option7 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 7);
		Optionsofreading option8 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 8);
		Optionsofreading option9 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 9);
		Optionsofreading option10 = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, (testid - 1) * 20 + 10);
		if (option1.getAnswer().equals(kread1)) {
			sum += 7.1;
		}
		if (option2.getAnswer().equals(kread2)) {
			sum += 7.1;
		}
		if (option3.getAnswer().equals(kread3)) {
			sum += 7.1;
		}
		if (option4.getAnswer().equals(kread4)) {
			sum += 7.1;
		}
		if (option5.getAnswer().equals(kread5)) {
			sum += 7.1;
		}
		if (option6.getAnswer().equals(kread6)) {
			sum += 7.1;
		}
		if (option7.getAnswer().equals(kread7)) {
			sum += 7.1;
		}
		if (option8.getAnswer().equals(kread8)) {
			sum += 7.1;
		}
		if (option9.getAnswer().equals(kread9)) {
			sum += 7.1;
		}
		if (option10.getAnswer().equals(kread10)) {
			sum += 7.1;
		}
		// 添加快速阅读成绩
		Examinee examinee = (Examinee) objectService.getObjectById(
				Examinee.class, candidateNo);
		examinee.setReadingGrade(sum);
		objectService.update(examinee);

		// 将写作添加到待评表
		Needmarking needm = new Needmarking();
		needm.setCandidateNo(candidateNo);
		needm.setAnswerOfcomprehensive(composition);
		needm.setTestid(testid);
		objectService.save(needm);

		// System.out.println(kread10);//测试传值是否成功
		// System.out.println(candidateNo);

		// 获得试题
		listeningmaterials = objectService.getObjectByTestid(
				"Listeningmaterial", testid);
		optionoflistenings = objectService.getObjectByTestid(
				"Optionoflistening", testid);
		titlesofreadings = objectService.getObjectByTestid("Titlesofreading",
				testid);
		optionsofreadings = objectService.getObjectByTestid("Optionsofreading",
				testid);
		translates = objectService.getObjectByTestid("Translate", testid);
		result = "getpartII";
		return result;
	}

	public String getCandidateNo() {
		return candidateNo;
	}

	public void setCandidateNo(String candidateNo) {
		this.candidateNo = candidateNo;
	}

	private String composition;

	public String getComposition() {
		return composition;
	}

	public void setComposition(String composition) {
		this.composition = composition;
	}

	public String getKread1() {
		return kread1;
	}

	public void setKread1(String kread1) {
		this.kread1 = kread1;
	}

	public String getKread2() {
		return kread2;
	}

	public void setKread2(String kread2) {
		this.kread2 = kread2;
	}

	public String getKread3() {
		return kread3;
	}

	public void setKread3(String kread3) {
		this.kread3 = kread3;
	}

	public String getKread4() {
		return kread4;
	}

	public void setKread4(String kread4) {
		this.kread4 = kread4;
	}

	public String getKread5() {
		return kread5;
	}

	public void setKread5(String kread5) {
		this.kread5 = kread5;
	}

	public String getKread6() {
		return kread6;
	}

	public void setKread6(String kread6) {
		this.kread6 = kread6;
	}

	public String getKread7() {
		return kread7;
	}

	public void setKread7(String kread7) {
		this.kread7 = kread7;
	}

	public String getKread8() {
		return kread8;
	}

	public void setKread8(String kread8) {
		this.kread8 = kread8;
	}

	public String getKread9() {
		return kread9;
	}

	public void setKread9(String kread9) {
		this.kread9 = kread9;
	}

	public String getKread10() {
		return kread10;
	}

	public void setKread10(String kread10) {
		this.kread10 = kread10;
	}

	private String kread1;
	private String kread2;
	private String kread3;
	private String kread4;
	private String kread5;
	private String kread6;
	private String kread7;
	private String kread8;
	private String kread9;
	private String kread10;

	public List<Composition> getCompositions() {
		return compositions;
	}

	public void setCompositions(List<Composition> compositions) {
		this.compositions = compositions;
	}

	public List<Titlesofreading> getTitlesofreadings() {
		return titlesofreadings;
	}

	public void setTitlesofreadings(List<Titlesofreading> titlesofreadings) {
		this.titlesofreadings = titlesofreadings;
	}

	public List<Listeningmaterial> getListeningmaterials() {
		return listeningmaterials;
	}

	public void setListeningmaterials(List<Listeningmaterial> listeningmaterials) {
		this.listeningmaterials = listeningmaterials;
	}

	public List<Optionoflistening> getOptionoflistenings() {
		return optionoflistenings;
	}

	public void setOptionoflistenings(List<Optionoflistening> optionoflistenings) {
		this.optionoflistenings = optionoflistenings;
	}

	public List<Optionsofreading> getOptionsofreadings() {
		return optionsofreadings;
	}

	public void setOptionsofreadings(List<Optionsofreading> optionsofreadings) {
		this.optionsofreadings = optionsofreadings;
	}

	public List<Translate> getTranslates() {
		return translates;
	}

	public void setTranslates(List<Translate> translates) {
		this.translates = translates;
	}

	public List<Compoundchoosewords> getCompoundchoosewords() {
		return compoundchoosewords;
	}

	public void setCompoundchoosewords(
			List<Compoundchoosewords> compoundchoosewords) {
		this.compoundchoosewords = compoundchoosewords;
	}

	public List<Testname> getTestnames() {
		return testnames;
	}

	public void setTestnames(List<Testname> testnames) {
		this.testnames = testnames;
	}

}
