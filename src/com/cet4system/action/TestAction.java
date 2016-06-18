package com.cet4system.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cet4system.domain.Test;
import com.cet4system.domain.Testname;
import com.cet4system.service.ObjectService;

public class TestAction {
	@Resource
	ObjectService objectService;

	private int id; // ID
	private String testname; // 考试名
	private String time; // 考试时间
	private String numarea; // 考号区间
	private String testteachers; // 监考教师
	private String position; // 考室
	private int testid; // 考试科目ID
	private List<Test> examlist;//考试集合
	private Test exam;//考试对象
	private List<Testname> testlist;//试题集合
	
	
	

	/**
	 * @return the testlist
	 */
	public List<Testname> getTestlist() {
		return testlist;
	}

	/**
	 * @param testlist the testlist to set
	 */
	public void setTestlist(List<Testname> testlist) {
		this.testlist = testlist;
	}

	/**
	 * @return the examlist
	 */
	public List<Test> getExamlist() {
		return examlist;
	}

	/**
	 * @param examlist the examlist to set
	 */
	public void setExamlist(List<Test> examlist) {
		this.examlist = examlist;
	}

	/**
	 * @return the exam
	 */
	public Test getExam() {
		return exam;
	}

	/**
	 * @param exam the exam to set
	 */
	public void setExam(Test exam) {
		this.exam = exam;
	}

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

	public int getTestid() {
		return testid;
	}

	public void setTestid(int testid) {
		this.testid = testid;
	}
	/* 分页 */
	private int curPage; // 当前显示的页面
	private int maxPage; // 总的页面数
	int perPageRow = 6; // 每页显示的记录数

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getMaxPage() {
		int maxRow = objectService.getObject("Examinee").size();
		if (maxRow % perPageRow == 0) {
			maxPage = maxRow / perPageRow;
		} else {
			maxPage = maxRow / perPageRow + 1;
		}
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	/* 前台功能 */

	/* 后台功能 */
	public String updateTest() {
		System.out.println("into");
		Test test = (Test) objectService.getObjectById(Test.class, id);
		test.setTestname(testname);
		test.setNumarea(numarea);
		test.setPosition(position);
		// test.setTestid(testid); 这里需要注意，该testid外键必须是数据库有的，否则不能进行修改
		test.setTestteachers(testteachers);
		test.setTime(time);
		if (objectService.update(test))
			return "updatesuccess";
		else
			return "updatefalse";
	}

	@SuppressWarnings("unchecked")
	public String getAllTest() {
		examlist = objectService.getObject("Test");//获取所有考试对象
		 
		 return "getAllTest";
		
	}
	/**
	 * 分页获取考试信息
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		this.examlist = objectService.page("Test", (curPage - 1)
				* perPageRow, perPageRow);
		return "execute";
	}
	/**
	 * 超链接
	 * 
	 * @return
	 */
	//添加
	@SuppressWarnings("unchecked")
	public String link() {
		testlist=objectService.getObject("Testname");
		return "success";
	}

	@SuppressWarnings("unchecked")
	public String linkUpdateExamPage() {
		this.examlist = objectService.page("Test", (curPage - 1)
				* perPageRow, perPageRow);
		return "updateExamPage";
	}

	@SuppressWarnings("unchecked")
	public String linkDeleteExam() {
		this.examlist = objectService.page("Test", (curPage - 1)
				* perPageRow, perPageRow);
		return "deleteExam";
	}
	

	/**
	 * 通过考号删除考试
	 * 
	 * @return
	 */
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));//试题id
		objectService.delete(Test.class, id);
		return "delete";
	}

	/**
	 * 通过id获取考试对象
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getExamById() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));//试题id
		this.exam = (Test)objectService.getObjectById(Test.class,
				id);
		testlist=objectService.getObject("Testname");
		return "getExamById";
	}

	/**
	 * 实现考试信息的修改
	 * 
	 * @return
	 */
	public String update() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));//试题id
		String examname = request.getParameter("testname");
		String time = request.getParameter("time");
		String numarea = request.getParameter("numarea");
		String testteachers = request.getParameter("testteachers");
		String position = request.getParameter("position");
		int testid=Integer.parseInt(request.getParameter("testid"));//试题id
		Testname testname=(Testname)objectService.getObjectById(Testname.class, testid);//获取试题对象
		
			
		Test exam = new Test();
		exam.setId(id);
		exam.setTestname(examname);
		exam.setTime(time);
		exam.setNumarea(numarea);
		exam.setTestteachers(testteachers);
		exam.setPosition(position);
		exam.setTestid(testname);

		objectService.update(exam);
		return "update";
	}

	/**
	 * 添加考试
	 * 
	 * @return
	 */
	public String add() {

		HttpServletRequest request = ServletActionContext.getRequest();
		String examname = request.getParameter("testname");
		String time = request.getParameter("time");
		String numarea = request.getParameter("numarea");
		String testteachers = request.getParameter("testteachers");
		String position = request.getParameter("position");
		int testid=Integer.parseInt(request.getParameter("testid"));//试题id
		Testname testname=(Testname)objectService.getObjectById(Testname.class, testid);//获取试题对象

		Test exam = new Test();
		exam.setTestname(examname);
		exam.setTime(time);
		exam.setNumarea(numarea);
		exam.setTestteachers(testteachers);
		exam.setPosition(position);
		exam.setTestid(testname);

		objectService.save(exam);
		return "add";
	}
}
