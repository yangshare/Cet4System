package com.cet4system.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

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

public class TestAction_partII {
	@Resource
	ObjectService objectService;
	private List<Testname> testnames;
	private List<Titlesofreading> titlesofreadings;
	private List<Listeningmaterial> listeningmaterials;
	private List<Optionoflistening> optionoflistenings;
	private List<Compoundchoosewords> compoundchoosewords;
	private List<Optionsofreading> optionsofreadings;
	private List<Translate> translates;
	private String candidateNo;
	String result = "";// 定义返回值
	private HttpSession session;
	private int testid;

	/**
	 * 第二部分评分
	 * 
	 * @return
	 */
	public String givegrade() {

		session = ServletActionContext.getRequest().getSession();
		testid = Integer.parseInt(session.getAttribute("testid").toString());

		System.out.println(candidateNo + "Happy");// 测试准考证号
		Examinee examinee = (Examinee) objectService.getObjectById(
				Examinee.class, candidateNo);
		examinee.setListeningGrade(getlisten());
		examinee.setReadingGrade(getread() + examinee.getReadingGrade());
		examinee.setComprehensivingGrade(getwaxing());
		objectService.update(examinee);

		Needmarking ndm = (Needmarking) objectService.getObjectById(
				Needmarking.class, candidateNo);
		ndm.setAnswerOftranslate("1." + trans1 + "<br>2." + trans2 + "<br>3."
				+ trans3 + "<br>4." + trans4 + "<br>5." + trans5);
		ndm.setStatus("未改");

		objectService.update(ndm);
		System.out.println(candidateNo + "sad");//

		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("success",
				"<script>alert('试卷提交成功，请考生轻声离开考场');</script>");
		candidateNo = "";

		result = "givegrade";
		return result;
	}

	/**
	 * 阅读评分
	 * 
	 * @return
	 */
	public double getread() {
		Compoundchoosewords c12 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 12);
		Compoundchoosewords c13 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 13);
		Compoundchoosewords c14 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 14);
		Compoundchoosewords c15 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 15);
		Compoundchoosewords c16 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 16);
		Compoundchoosewords c17 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 17);
		Compoundchoosewords c18 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 18);
		Compoundchoosewords c19 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 19);
		Compoundchoosewords c20 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 20);
		Compoundchoosewords c21 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 21);

		Optionsofreading o1 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 11);
		Optionsofreading o2 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 12);
		Optionsofreading o3 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 13);
		Optionsofreading o4 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 14);
		Optionsofreading o5 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 15);
		Optionsofreading o6 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 16);
		Optionsofreading o7 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 17);
		Optionsofreading o8 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 18);
		Optionsofreading o9 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 19);
		Optionsofreading o10 = (Optionsofreading) objectService.getObjectById(
				Optionsofreading.class, (testid - 1) * 20 + 20);

		double sumread = 0;
		// 阅读评分
		if (choose1 != null && choose1.equals(c12.getAnswer())) {
			sumread += 7.1;
		}
		if (choose2 != null && choose2.equals(c13.getAnswer())) {
			sumread += 7.1;
		}
		if (choose3 != null && choose3.equals(c14.getAnswer())) {
			sumread += 7.1;
		}
		if (choose4 != null && choose4.equals(c15.getAnswer())) {
			sumread += 7.1;
		}
		if (choose5 != null && choose5.equals(c16.getAnswer())) {
			sumread += 7.1;
		}
		if (choose6 != null && choose6.equals(c17.getAnswer())) {
			sumread += 7.1;
		}
		if (choose7 != null && choose7.equals(c18.getAnswer())) {
			sumread += 7.1;
		}
		if (choose8 != null && choose8.equals(c19.getAnswer())) {
			sumread += 7.1;
		}
		if (choose9 != null && choose9.equals(c20.getAnswer())) {
			sumread += 7.1;
		}
		if (choose10 != null && choose10.equals(c21.getAnswer())) {
			sumread += 7.1;
		}
		if (read1 != null && read1.equals(o1.getAnswer())) {
			sumread += 14.2;
		}
		if (read2 != null && read3.equals(o2.getAnswer())) {
			sumread += 14.2;
		}
		if (read3 != null && read3.equals(o3.getAnswer())) {
			sumread += 14.2;
		}
		if (read4 != null && read4.equals(o4.getAnswer())) {
			sumread += 14.2;
		}
		if (read5 != null && read5.equals(o5.getAnswer())) {
			sumread += 14.2;
		}
		if (read6 != null && read6.equals(o6.getAnswer())) {
			sumread += 14.2;
		}
		if (read7 != null && read7.equals(o7.getAnswer())) {
			sumread += 14.2;
		}
		if (read8 != null && read8.equals(o8.getAnswer())) {
			sumread += 14.2;
		}
		if (read9 != null && read9.equals(o9.getAnswer())) {
			sumread += 14.2;
		}
		if (read10 != null && read10.equals(o10.getAnswer())) {
			sumread += 14.2;
		}
		return sumread;

	}

	/**
	 * 听力评分
	 * 
	 * @return
	 */
	public double getlisten() {
		double sumlisten = 0;
		Optionoflistening op1 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 1);
		Optionoflistening op2 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 2);
		Optionoflistening op3 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 3);
		Optionoflistening op4 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 4);
		Optionoflistening op5 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 5);
		Optionoflistening op6 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 6);
		Optionoflistening op7 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 7);
		Optionoflistening op8 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 8);
		Optionoflistening op9 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 9);
		Optionoflistening op10 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 10);
		Optionoflistening op11 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 11);
		Optionoflistening op12 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 12);
		Optionoflistening op13 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 13);
		Optionoflistening op14 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 14);
		Optionoflistening op15 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 15);
		Optionoflistening op16 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 16);
		Optionoflistening op17 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 17);
		Optionoflistening op18 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 18);
		Optionoflistening op19 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 19);
		Optionoflistening op20 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 20);
		Optionoflistening op21 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 21);
		Optionoflistening op22 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 22);
		Optionoflistening op23 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 23);
		Optionoflistening op24 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 24);
		Optionoflistening op25 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 25);

		Compoundchoosewords c1 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 1);
		Compoundchoosewords c2 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 2);
		Compoundchoosewords c3 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 3);
		Compoundchoosewords c4 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 4);
		Compoundchoosewords c5 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 5);
		Compoundchoosewords c6 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 6);
		Compoundchoosewords c7 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 7);
		Compoundchoosewords c8 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 8);
		Compoundchoosewords c9 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, (testid - 1) * 21 + 9);
		Compoundchoosewords c10 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 10);
		Compoundchoosewords c11 = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class,
						(testid - 1) * 21 + 11);

		if (listen11 != null && listen11.equals(op1.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen12 != null && listen12.equals(op2.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen13 != null && listen13.equals(op3.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen14 != null && listen14.equals(op4.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen15 != null && listen15.equals(op5.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen16 != null && listen16.equals(op6.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen17 != null && listen17.equals(op7.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen18 != null && listen18.equals(op8.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen19 != null && listen19.equals(op9.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen110 != null && listen110.equals(op10.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen111 != null && listen111.equals(op11.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen112 != null && listen112.equals(op12.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen113 != null && listen113.equals(op13.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen114 != null && listen114.equals(op14.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen115 != null && listen115.equals(op15.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen116 != null && listen116.equals(op16.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen117 != null && listen117.equals(op17.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen118 != null && listen118.equals(op18.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen119 != null && listen119.equals(op19.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen120 != null && listen120.equals(op20.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen121 != null && listen121.equals(op21.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen122 != null && listen122.equals(op22.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen123 != null && listen123.equals(op23.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen124 != null && listen124.equals(op24.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen125 != null && listen125.equals(op25.getAnswer())) {
			sumlisten += 7.1;
		}
		if (listen126 != null && listen126.equals(c1.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen127 != null && listen127.equals(c2.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen128 != null && listen128.equals(c3.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen129 != null && listen129.equals(c4.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen130 != null && listen130.equals(c5.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen131 != null && listen131.equals(c6.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen132 != null && listen132.equals(c7.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen133 != null && listen133.equals(c8.getAnswer())) {
			sumlisten += 3.55;
		}
		if (listen134 != null && listen134.equals(c9.getAnswer())) {
			sumlisten += 14.2;
		}
		if (listen135 != null && listen135.equals(c10.getAnswer())) {
			sumlisten += 14.2;
		}
		if (listen136 != null && listen136.equals(c11.getAnswer())) {
			sumlisten += 14.2;
		}

		return sumlisten;
	}

	/**
	 * 完型评分
	 * 
	 * @return
	 */
	public double getwaxing() {
		Optionoflistening of2 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 26);
		Optionoflistening of3 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 27);
		Optionoflistening of4 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 28);
		Optionoflistening of5 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 29);
		Optionoflistening of6 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 30);
		Optionoflistening of7 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 31);
		Optionoflistening of8 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 32);
		Optionoflistening of9 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 33);
		Optionoflistening of10 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 34);
		Optionoflistening of11 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 35);
		Optionoflistening of12 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 36);
		Optionoflistening of13 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 37);
		Optionoflistening of14 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 38);
		Optionoflistening of15 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 39);
		Optionoflistening of16 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 40);
		Optionoflistening of17 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 41);
		Optionoflistening of18 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 42);
		Optionoflistening of19 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 43);
		Optionoflistening of20 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 44);
		Optionoflistening of21 = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, (testid - 1) * 45 + 45);
		double sumcomh = 0;

		if (wanxing1 != null && wanxing1.equals(of2.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing2 != null && wanxing2.equals(of3.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing3 != null && wanxing3.equals(of4.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing4 != null && wanxing4.equals(of5.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing5 != null && wanxing5.equals(of6.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing6 != null && wanxing6.equals(of7.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing7 != null && wanxing7.equals(of8.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing8 != null && wanxing8.equals(of9.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing9 != null && wanxing9.equals(of10.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing10 != null && wanxing10.equals(of11.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing11 != null && wanxing11.equals(of12.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing12 != null && wanxing12.equals(of13.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing13 != null && wanxing13.equals(of14.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing14 != null && wanxing14.equals(of15.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing15 != null && wanxing15.equals(of16.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing16 != null && wanxing16.equals(of17.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing17 != null && wanxing17.equals(of18.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing18 != null && wanxing18.equals(of19.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing19 != null && wanxing19.equals(of20.getAnswer())) {
			sumcomh += 3.55;
		}
		if (wanxing20 != null && wanxing20.equals(of21.getAnswer())) {
			sumcomh += 3.55;
		}
		return sumcomh;
	}

	public String getTrans1() {
		return trans1;
	}

	public void setTrans1(String trans1) {
		this.trans1 = trans1;
	}

	public String getTrans2() {
		return trans2;
	}

	public void setTrans2(String trans2) {
		this.trans2 = trans2;
	}

	public String getTrans3() {
		return trans3;
	}

	public void setTrans3(String trans3) {
		this.trans3 = trans3;
	}

	public String getTrans4() {
		return trans4;
	}

	public void setTrans4(String trans4) {
		this.trans4 = trans4;
	}

	public String getTrans5() {
		return trans5;
	}

	public void setTrans5(String trans5) {
		this.trans5 = trans5;
	}

	private String trans1;// 翻译答案
	private String trans2;
	private String trans3;
	private String trans4;
	private String trans5;
	private String wanxing1;

	public String getWanxing1() {
		return wanxing1;
	}

	public void setWanxing1(String wanxing1) {
		this.wanxing1 = wanxing1;
	}

	public String getWanxing2() {
		return wanxing2;
	}

	public void setWanxing2(String wanxing2) {
		this.wanxing2 = wanxing2;
	}

	public String getWanxing3() {
		return wanxing3;
	}

	public void setWanxing3(String wanxing3) {
		this.wanxing3 = wanxing3;
	}

	public String getWanxing4() {
		return wanxing4;
	}

	public void setWanxing4(String wanxing4) {
		this.wanxing4 = wanxing4;
	}

	public String getWanxing5() {
		return wanxing5;
	}

	public void setWanxing5(String wanxing5) {
		this.wanxing5 = wanxing5;
	}

	public String getWanxing6() {
		return wanxing6;
	}

	public void setWanxing6(String wanxing6) {
		this.wanxing6 = wanxing6;
	}

	public String getWanxing7() {
		return wanxing7;
	}

	public void setWanxing7(String wanxing7) {
		this.wanxing7 = wanxing7;
	}

	public String getWanxing8() {
		return wanxing8;
	}

	public void setWanxing8(String wanxing8) {
		this.wanxing8 = wanxing8;
	}

	public String getWanxing9() {
		return wanxing9;
	}

	public void setWanxing9(String wanxing9) {
		this.wanxing9 = wanxing9;
	}

	public String getWanxing10() {
		return wanxing10;
	}

	public void setWanxing10(String wanxing10) {
		this.wanxing10 = wanxing10;
	}

	public String getWanxing11() {
		return wanxing11;
	}

	public void setWanxing11(String wanxing11) {
		this.wanxing11 = wanxing11;
	}

	public String getWanxing12() {
		return wanxing12;
	}

	public void setWanxing12(String wanxing12) {
		this.wanxing12 = wanxing12;
	}

	public String getWanxing13() {
		return wanxing13;
	}

	public void setWanxing13(String wanxing13) {
		this.wanxing13 = wanxing13;
	}

	public String getWanxing14() {
		return wanxing14;
	}

	public void setWanxing14(String wanxing14) {
		this.wanxing14 = wanxing14;
	}

	public String getWanxing15() {
		return wanxing15;
	}

	public void setWanxing15(String wanxing15) {
		this.wanxing15 = wanxing15;
	}

	public String getWanxing16() {
		return wanxing16;
	}

	public void setWanxing16(String wanxing16) {
		this.wanxing16 = wanxing16;
	}

	public String getWanxing17() {
		return wanxing17;
	}

	public void setWanxing17(String wanxing17) {
		this.wanxing17 = wanxing17;
	}

	public String getWanxing18() {
		return wanxing18;
	}

	public void setWanxing18(String wanxing18) {
		this.wanxing18 = wanxing18;
	}

	public String getWanxing19() {
		return wanxing19;
	}

	public void setWanxing19(String wanxing19) {
		this.wanxing19 = wanxing19;
	}

	public String getWanxing20() {
		return wanxing20;
	}

	public void setWanxing20(String wanxing20) {
		this.wanxing20 = wanxing20;
	}

	private String wanxing2;// 完型填空答案
	private String wanxing3;
	private String wanxing4;
	private String wanxing5;
	private String wanxing6;
	private String wanxing7;
	private String wanxing8;
	private String wanxing9;
	private String wanxing10;
	private String wanxing11;
	private String wanxing12;
	private String wanxing13;
	private String wanxing14;
	private String wanxing15;
	private String wanxing16;
	private String wanxing17;
	private String wanxing18;
	private String wanxing19;
	private String wanxing20;

	private String choose1;

	public String getChoose1() {
		return choose1;
	}

	public void setChoose1(String choose1) {
		this.choose1 = choose1;
	}

	public String getChoose2() {
		return choose2;
	}

	public void setChoose2(String choose2) {
		this.choose2 = choose2;
	}

	public String getChoose3() {
		return choose3;
	}

	public void setChoose3(String choose3) {
		this.choose3 = choose3;
	}

	public String getChoose4() {
		return choose4;
	}

	public void setChoose4(String choose4) {
		this.choose4 = choose4;
	}

	public String getChoose5() {
		return choose5;
	}

	public void setChoose5(String choose5) {
		this.choose5 = choose5;
	}

	public String getChoose6() {
		return choose6;
	}

	public void setChoose6(String choose6) {
		this.choose6 = choose6;
	}

	public String getChoose7() {
		return choose7;
	}

	public void setChoose7(String choose7) {
		this.choose7 = choose7;
	}

	public String getChoose8() {
		return choose8;
	}

	public void setChoose8(String choose8) {
		this.choose8 = choose8;
	}

	public String getChoose9() {
		return choose9;
	}

	public void setChoose9(String choose9) {
		this.choose9 = choose9;
	}

	public String getChoose10() {
		return choose10;
	}

	public void setChoose10(String choose10) {
		this.choose10 = choose10;
	}

	public String getRead1() {
		return read1;
	}

	public void setRead1(String read1) {
		this.read1 = read1;
	}

	public String getRead2() {
		return read2;
	}

	public void setRead2(String read2) {
		this.read2 = read2;
	}

	public String getRead3() {
		return read3;
	}

	public void setRead3(String read3) {
		this.read3 = read3;
	}

	public String getRead4() {
		return read4;
	}

	public void setRead4(String read4) {
		this.read4 = read4;
	}

	public String getRead5() {
		return read5;
	}

	public void setRead5(String read5) {
		this.read5 = read5;
	}

	public String getRead6() {
		return read6;
	}

	public void setRead6(String read6) {
		this.read6 = read6;
	}

	public String getRead7() {
		return read7;
	}

	public void setRead7(String read7) {
		this.read7 = read7;
	}

	public String getRead8() {
		return read8;
	}

	public void setRead8(String read8) {
		this.read8 = read8;
	}

	public String getRead9() {
		return read9;
	}

	public void setRead9(String read9) {
		this.read9 = read9;
	}

	public String getRead10() {
		return read10;
	}

	public void setRead10(String read10) {
		this.read10 = read10;
	}

	public List<Testname> getTestnames() {
		return testnames;
	}

	public void setTestnames(List<Testname> testnames) {
		this.testnames = testnames;
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

	public List<Compoundchoosewords> getCompoundchoosewords() {
		return compoundchoosewords;
	}

	public void setCompoundchoosewords(
			List<Compoundchoosewords> compoundchoosewords) {
		this.compoundchoosewords = compoundchoosewords;
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

	public String getCandidateNo() {
		return candidateNo;
	}

	public void setCandidateNo(String candidateNo) {
		this.candidateNo = candidateNo;
	}

	public String getListen11() {
		return listen11;
	}

	public void setListen11(String listen11) {
		this.listen11 = listen11;
	}

	public String getListen12() {
		return listen12;
	}

	public void setListen12(String listen12) {
		this.listen12 = listen12;
	}

	public String getListen13() {
		return listen13;
	}

	public void setListen13(String listen13) {
		this.listen13 = listen13;
	}

	public String getListen14() {
		return listen14;
	}

	public void setListen14(String listen14) {
		this.listen14 = listen14;
	}

	public String getListen15() {
		return listen15;
	}

	public void setListen15(String listen15) {
		this.listen15 = listen15;
	}

	public String getListen16() {
		return listen16;
	}

	public void setListen16(String listen16) {
		this.listen16 = listen16;
	}

	public String getListen17() {
		return listen17;
	}

	public void setListen17(String listen17) {
		this.listen17 = listen17;
	}

	public String getListen18() {
		return listen18;
	}

	public void setListen18(String listen18) {
		this.listen18 = listen18;
	}

	public String getListen19() {
		return listen19;
	}

	public void setListen19(String listen19) {
		this.listen19 = listen19;
	}

	public String getListen110() {
		return listen110;
	}

	public void setListen110(String listen110) {
		this.listen110 = listen110;
	}

	public String getListen111() {
		return listen111;
	}

	public void setListen111(String listen111) {
		this.listen111 = listen111;
	}

	public String getListen112() {
		return listen112;
	}

	public void setListen112(String listen112) {
		this.listen112 = listen112;
	}

	public String getListen113() {
		return listen113;
	}

	public void setListen113(String listen113) {
		this.listen113 = listen113;
	}

	public String getListen114() {
		return listen114;
	}

	public void setListen114(String listen114) {
		this.listen114 = listen114;
	}

	public String getListen115() {
		return listen115;
	}

	public void setListen115(String listen115) {
		this.listen115 = listen115;
	}

	public String getListen116() {
		return listen116;
	}

	public void setListen116(String listen116) {
		this.listen116 = listen116;
	}

	public String getListen117() {
		return listen117;
	}

	public void setListen117(String listen117) {
		this.listen117 = listen117;
	}

	public String getListen118() {
		return listen118;
	}

	public void setListen118(String listen118) {
		this.listen118 = listen118;
	}

	public String getListen119() {
		return listen119;
	}

	public void setListen119(String listen119) {
		this.listen119 = listen119;
	}

	public String getListen120() {
		return listen120;
	}

	public void setListen120(String listen120) {
		this.listen120 = listen120;
	}

	public String getListen121() {
		return listen121;
	}

	public void setListen121(String listen121) {
		this.listen121 = listen121;
	}

	public String getListen122() {
		return listen122;
	}

	public void setListen122(String listen122) {
		this.listen122 = listen122;
	}

	public String getListen123() {
		return listen123;
	}

	public void setListen123(String listen123) {
		this.listen123 = listen123;
	}

	public String getListen124() {
		return listen124;
	}

	public void setListen124(String listen124) {
		this.listen124 = listen124;
	}

	public String getListen125() {
		return listen125;
	}

	public void setListen125(String listen125) {
		this.listen125 = listen125;
	}

	public String getListen126() {
		return listen126;
	}

	public void setListen126(String listen126) {
		this.listen126 = listen126;
	}

	public String getListen127() {
		return listen127;
	}

	public void setListen127(String listen127) {
		this.listen127 = listen127;
	}

	public String getListen128() {
		return listen128;
	}

	public void setListen128(String listen128) {
		this.listen128 = listen128;
	}

	public String getListen129() {
		return listen129;
	}

	public void setListen129(String listen129) {
		this.listen129 = listen129;
	}

	public String getListen130() {
		return listen130;
	}

	public void setListen130(String listen130) {
		this.listen130 = listen130;
	}

	public String getListen131() {
		return listen131;
	}

	public void setListen131(String listen131) {
		this.listen131 = listen131;
	}

	public String getListen132() {
		return listen132;
	}

	public void setListen132(String listen132) {
		this.listen132 = listen132;
	}

	public String getListen133() {
		return listen133;
	}

	public void setListen133(String listen133) {
		this.listen133 = listen133;
	}

	public String getListen134() {
		return listen134;
	}

	public void setListen134(String listen134) {
		this.listen134 = listen134;
	}

	public String getListen135() {
		return listen135;
	}

	public void setListen135(String listen135) {
		this.listen135 = listen135;
	}

	public String getListen136() {
		return listen136;
	}

	public void setListen136(String listen136) {
		this.listen136 = listen136;
	}

	private String listen11;
	private String listen12;
	private String listen13;
	private String listen14;
	private String listen15;
	private String listen16;
	private String listen17;
	private String listen18;
	private String listen19;
	private String listen110;
	private String listen111;
	private String listen112;
	private String listen113;
	private String listen114;
	private String listen115;
	private String listen116;
	private String listen117;
	private String listen118;
	private String listen119;
	private String listen120;
	private String listen121;
	private String listen122;
	private String listen123;
	private String listen124;
	private String listen125;
	private String listen126;
	private String listen127;
	private String listen128;
	private String listen129;
	private String listen130;
	private String listen131;
	private String listen132;
	private String listen133;
	private String listen134;
	private String listen135;
	private String listen136;
	private String choose2;// 选词填空答案
	private String choose3;
	private String choose4;
	private String choose5;
	private String choose6;
	private String choose7;
	private String choose8;
	private String choose9;
	private String choose10;
	private String read1;// 阅读选项答案
	private String read2;
	private String read3;
	private String read4;
	private String read5;
	private String read6;
	private String read7;
	private String read8;
	private String read9;
	private String read10;
}
