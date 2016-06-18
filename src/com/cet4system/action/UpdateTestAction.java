package com.cet4system.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cet4system.domain.Composition;
import com.cet4system.domain.Compoundchoosewords;
import com.cet4system.domain.Listeningmaterial;
import com.cet4system.domain.Optionoflistening;
import com.cet4system.domain.Optionsofreading;
import com.cet4system.domain.Testname;
import com.cet4system.domain.Titlesofreading;
import com.cet4system.domain.Translate;
import com.cet4system.service.ObjectService;

public class UpdateTestAction {

	@Resource
	ObjectService objectService;
	private static File listen;// 定义文件
	private static String listenFileName;// 定义文件名（相对路径）
	private List<Testname> testnames;
	private List<Composition> compositions;
	private List<Titlesofreading> titlesofreadings;
	private List<Listeningmaterial> listeningmaterials;
	private List<Optionoflistening> optionoflistenings;
	private List<Compoundchoosewords> compoundchoosewords;
	private List<Optionsofreading> optionsofreadings;
	private List<Translate> translates;

	public File getListen() {
		return listen;
	}

	@SuppressWarnings("static-access")
	public void setListen(File listen) {
		this.listen = listen;
	}

	public String getListenFileName() {
		return listenFileName;
	}

	@SuppressWarnings("static-access")
	public void setListenFileName(String listenFileName) {
		this.listenFileName = listenFileName;
	}

	public List<Testname> getTestnames() {
		return testnames;
	}

	public void setTestnames(List<Testname> testnames) {
		this.testnames = testnames;
	}

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
		int maxRow = objectService.getObject("Testname").size();
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

	/**
	 * action默认方法
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		this.testnames = objectService.page("Testname", (curPage - 1)
				* perPageRow, perPageRow);
		return "execute";
	}

	/**
	 * 超链接
	 * 
	 * @return
	 */
	public String link() {
		return "success";
	}

	@SuppressWarnings("unchecked")
	public String linkUpdateTestPage() {
		this.testnames = objectService.page("Testname", (curPage - 1)
				* perPageRow, perPageRow);
		return "updateAllTests";
	}

	@SuppressWarnings("unchecked")
	public String linkDeleteTest() {
		this.testnames = objectService.page("Testname", (curPage - 1)
				* perPageRow, perPageRow);
		return "deleteAllTests";
	}

	/**
	 * 文件上传
	 */
	@SuppressWarnings("deprecation")
	static void upload() {
		try {
			InputStream is = new FileInputStream(listen); // 从流中读取数据
			OutputStream os = new FileOutputStream(ServletActionContext
					.getRequest().getRealPath("listening")
					+ "/" + listenFileName); // 输出数据
			int i = 0;
			byte[] cs = new byte[1025];

			// 读出文件
			while ((i = is.read(cs)) != -1) { // 只有读到末尾时i才为-1
				os.write(cs, 0, i);
			}
			os.close();
			is.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

	/**
	 * 通过testid获取一套试题
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getTest() {
		String testid = "";
		if(ServletActionContext.getRequest().getAttribute("testid")!=null){
			testid = ServletActionContext.getRequest().getAttribute("testid").toString();
		}
		if(ServletActionContext.getRequest().getParameter("testid")!=null){
			testid = ServletActionContext.getRequest().getParameter("testid");
		}

		testnames = objectService.getObject("Testname", testid);
		compositions = objectService.getObject("Composition", testid);
		titlesofreadings = objectService.getObject("Titlesofreading", testid);
		optionsofreadings = objectService.getObject("Optionsofreading", testid);
		optionoflistenings = objectService.getObject("Optionoflistening",
				testid);
		listeningmaterials = objectService.getObject("Listeningmaterial",
				testid);
		compoundchoosewords = objectService.getObject("Compoundchoosewords",
				testid);
		translates = objectService.getObject("Translate", testid);

		return "getTest";
	}
	
	/**
	 * 获取所有试题（删除列表）
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String detectAllTests() {

		testnames = objectService.getObject("Testname");
		compositions = objectService.getObject("Composition");
		titlesofreadings = objectService.getObject("Titlesofreading");
		optionsofreadings = objectService.getObject("Optionsofreading");
		optionoflistenings = objectService.getObject("Optionoflistening");
		listeningmaterials = objectService.getObject("Listeningmaterial");
		compoundchoosewords = objectService.getObject("Compoundchoosewords");
		translates = objectService.getObject("Translate");

		return "deleteAllTests";
	}

	/**
	 * 通过testid删除一套试题
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String deleteTest() {
		String testid = "";
		
		testid = ServletActionContext.getRequest().getParameter("testid");	

		testnames = objectService.getObject("Testname", testid);
		compositions = objectService.getObject("Composition", testid);
		titlesofreadings = objectService.getObject("Titlesofreading", testid);
		optionsofreadings = objectService.getObject("Optionsofreading", testid);
		optionoflistenings = objectService.getObject("Optionoflistening",
				testid);
		listeningmaterials = objectService.getObject("Listeningmaterial",
				testid);
		compoundchoosewords = objectService.getObject("Compoundchoosewords",
				testid);
		translates = objectService.getObject("Translate", testid);
		
		objectService.delete(Testname.class,Integer.parseInt(testid));
		objectService.delete("Composition", testid);
		objectService.delete("Titlesofreading", testid);
		objectService.delete("Optionsofreading", testid);
		objectService.delete("Optionoflistening",
				testid);
		objectService.delete("Listeningmaterial",
				testid);
		objectService.delete("Compoundchoosewords",
				testid);
		objectService.delete("Translate", testid);
		

		return "successDel";
	}

	/**
	 * 获取修改所有试题
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String updateAllTests() {

		testnames = objectService.getObject("Testname");
		compositions = objectService.getObject("Composition");
		titlesofreadings = objectService.getObject("Titlesofreading");
		optionsofreadings = objectService.getObject("Optionsofreading");
		optionoflistenings = objectService.getObject("Optionoflistening");
		listeningmaterials = objectService.getObject("Listeningmaterial");
		compoundchoosewords = objectService.getObject("Compoundchoosewords");
		translates = objectService.getObject("Translate");

		return "updateAllTests";
	}

	/**
	 * 获取修改一套题
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String updateTest() {
		String testid = "";
		if(ServletActionContext.getRequest().getAttribute("testid")!=null){
			testid = ServletActionContext.getRequest().getAttribute("testid").toString();
		}
		if(ServletActionContext.getRequest().getParameter("testid")!=null){
			testid = ServletActionContext.getRequest().getParameter("testid");
		}

		testnames = objectService.getObject("Testname", testid);
		compositions = objectService.getObject("Composition", testid);
		titlesofreadings = objectService.getObject("Titlesofreading", testid);
		optionsofreadings = objectService.getObject("Optionsofreading", testid);
		optionoflistenings = objectService.getObject("Optionoflistening",
				testid);
		listeningmaterials = objectService.getObject("Listeningmaterial",
				testid);
		compoundchoosewords = objectService.getObject("Compoundchoosewords",
				testid);
		translates = objectService.getObject("Translate", testid);

		return "updateTest";
	}
	/**
	 * 获取增加一套题
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String addTest() {
		String testid = "";
		if(ServletActionContext.getRequest().getAttribute("testid")!=null){
			testid = ServletActionContext.getRequest().getAttribute("testid").toString();
		}
		if(ServletActionContext.getRequest().getParameter("testid")!=null){
			testid = ServletActionContext.getRequest().getParameter("testid");
		}

		testnames = objectService.getObject("Testname", testid);
		compositions = objectService.getObject("Composition", testid);
		titlesofreadings = objectService.getObject("Titlesofreading", testid);
		optionsofreadings = objectService.getObject("Optionsofreading", testid);
		optionoflistenings = objectService.getObject("Optionoflistening",
				testid);
		listeningmaterials = objectService.getObject("Listeningmaterial",
				testid);
		compoundchoosewords = objectService.getObject("Compoundchoosewords",
				testid);
		translates = objectService.getObject("Translate", testid);

		return "addTest";
	}

	/**
	 * 新增试题标题
	 * 
	 * @return
	 */
	public String insertTestName() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String title = null;
		try {
			title = new String(request.getParameter("testname").getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 
		Testname testname = new Testname();
		testname.setTitle(title);
		objectService.save(testname);
		ServletActionContext.getRequest().setAttribute("testid",
				testname.getId());
		return "successAdd";
	}
/*********************************修改************************************/	
	/**
	 * 修改试题标题
	 * 
	 * @return
	 */
	public String updateTestName() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Testname testname = (Testname) objectService.getObjectById(
				Testname.class, id);
		testname.setTitle(title);
		objectService.update(testname);
		ServletActionContext.getRequest().setAttribute("testid",
				testname.getId());
		return "success";
	}

	/**
	 * 修改作文
	 * 
	 * @return
	 */
	public String updateComposition() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Composition composition = (Composition) objectService.getObjectById(
				Composition.class, id);
		composition.setTitle(title);
		objectService.update(composition);
		ServletActionContext.getRequest().setAttribute("testid",
				composition.getTestid());
		return "success";
	}

	/**
	 * 修改阅读文章
	 * 
	 * @return
	 */
	public String updateTitlesofreading() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Titlesofreading titlesofreading = (Titlesofreading) objectService
				.getObjectById(Titlesofreading.class, id);
		titlesofreading.setTitle(title);
		objectService.update(titlesofreading);
		ServletActionContext.getRequest().setAttribute("testid",
				titlesofreading.getTestid());
		return "success";
	}

	/**
	 * 修改阅读选项
	 * 
	 * @return
	 */
	public String updateOptionsofreading() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String optionA = request.getParameter("optionA");
		String optionB = request.getParameter("optionB");
		String optionC = request.getParameter("optionC");
		String optionD = request.getParameter("optionD");
		String answer = request.getParameter("answer");
		Optionsofreading optionsofreading = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, id);
		optionsofreading.setTitle(title);
		optionsofreading.setOptionA(optionA);
		optionsofreading.setOptionB(optionB);
		optionsofreading.setOptionC(optionC);
		optionsofreading.setOptionD(optionD);
		optionsofreading.setAnswer(answer);
		objectService.update(optionsofreading);
		ServletActionContext.getRequest().setAttribute("testid",
				optionsofreading.getTestid());
		return "success";
	}

	/**
	 * 修改听力材料
	 * 
	 * @return
	 */
	public String updateLsteningmaterial() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String material = request.getParameter("material");

		System.out.println(listen);

		String listenMaterial = null;
		Listeningmaterial listeningmaterial = (Listeningmaterial) objectService
				.getObjectById(Listeningmaterial.class, id);

		// 只有文件改变的时候才重新上传
		if (material.equals(listeningmaterial.getMaterial())) {
			listenMaterial = material;
		} else {
			listenMaterial = "listening/" + listenFileName;
			upload();
		}

		listeningmaterial.setMaterial(listenMaterial);
		objectService.update(listeningmaterial);
		ServletActionContext.getRequest().setAttribute("testid",
				listeningmaterial.getTestid());
		return "success";
	}

	/**
	 * 修改听力选项
	 * 
	 * @return
	 */
	public String updateOptionoflistening() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String optionA = request.getParameter("optionA");
		String optionB = request.getParameter("optionB");
		String optionC = request.getParameter("optionC");
		String optionD = request.getParameter("optionD");
		String answer = request.getParameter("answer");
		Optionoflistening optionoflistening = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, id);
		optionoflistening.setOptionA(optionA);
		optionoflistening.setOptionB(optionB);
		optionoflistening.setOptionC(optionC);
		optionoflistening.setOptionD(optionD);
		optionoflistening.setAnswer(answer);
		objectService.update(optionoflistening);
		ServletActionContext.getRequest().setAttribute("testid",
				optionoflistening.getTestid());
		return "success";
	}

	/**
	 * 修改听力的最后一部分的答案和选词填空的答案
	 * 
	 * @return
	 */
	public String updateCompoundchoosewords() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String answer = request.getParameter("answer");
		Compoundchoosewords compoundchoosewords = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, id);
		compoundchoosewords.setAnswer(answer);
		objectService.update(compoundchoosewords);
		ServletActionContext.getRequest().setAttribute("testid",
				compoundchoosewords.getTestid());
		return "success";
	}

	/**
	 * 修改翻译问题
	 * 
	 * @return
	 */
	public String updateTranslate() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Translate translate = (Translate) objectService.getObjectById(
				Translate.class, id);
		translate.setTitle(title);
		objectService.update(translate);
		ServletActionContext.getRequest().setAttribute("testid",
				translate.getTestid());
		return "success";
	}
/*********************************添加************************************/	
	/**
	 * 增加试题标题
	 * 
	 * @return
	 */
	public String addTestName() {
		System.out.println("*********************************************");
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Testname testname = (Testname) objectService.getObjectById(
				Testname.class, id);
		testname.setTitle(title);
		objectService.update(testname);
		ServletActionContext.getRequest().setAttribute("testid",
				testname.getId());
		return "successAdd";
	}

	/**
	 * 增加作文
	 * 
	 * @return
	 */
	public String addComposition() {
		System.out.println("*********************************************");
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Composition composition = (Composition) objectService.getObjectById(
				Composition.class, id);
		composition.setTitle(title);
		objectService.update(composition);
		ServletActionContext.getRequest().setAttribute("testid",
				composition.getTestid());
		return "successAdd";
	}

	/**
	 * 增加阅读文章
	 * 
	 * @return
	 */
	public String addTitlesofreading() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Titlesofreading titlesofreading = (Titlesofreading) objectService
				.getObjectById(Titlesofreading.class, id);
		titlesofreading.setTitle(title);
		objectService.update(titlesofreading);
		ServletActionContext.getRequest().setAttribute("testid",
				titlesofreading.getTestid());
		return "successAdd";
	}

	/**
	 * 增加阅读选项
	 * 
	 * @return
	 */
	public String addOptionsofreading() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String optionA = request.getParameter("optionA");
		String optionB = request.getParameter("optionB");
		String optionC = request.getParameter("optionC");
		String optionD = request.getParameter("optionD");
		String answer = request.getParameter("answer");
		Optionsofreading optionsofreading = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, id);
		optionsofreading.setTitle(title);
		optionsofreading.setOptionA(optionA);
		optionsofreading.setOptionB(optionB);
		optionsofreading.setOptionC(optionC);
		optionsofreading.setOptionD(optionD);
		optionsofreading.setAnswer(answer);
		objectService.update(optionsofreading);
		ServletActionContext.getRequest().setAttribute("testid",
				optionsofreading.getTestid());
		return "successAdd";
	}

	/**
	 * 增加听力材料
	 * 
	 * @return
	 */
	public String addLsteningmaterial() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String material = request.getParameter("material");

		System.out.println(listen);

		String listenMaterial = null;
		Listeningmaterial listeningmaterial = (Listeningmaterial) objectService
				.getObjectById(Listeningmaterial.class, id);

		// 只有文件改变的时候才重新上传
		if (material.equals(listeningmaterial.getMaterial())) {
			listenMaterial = material;
		} else {
			listenMaterial = "listening/" + listenFileName;
			upload();
		}

		listeningmaterial.setMaterial(listenMaterial);
		objectService.update(listeningmaterial);
		ServletActionContext.getRequest().setAttribute("testid",
				listeningmaterial.getTestid());
		return "successAdd";
	}

	/**
	 * 增加听力选项
	 * 
	 * @return
	 */
	public String addOptionoflistening() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String optionA = request.getParameter("optionA");
		String optionB = request.getParameter("optionB");
		String optionC = request.getParameter("optionC");
		String optionD = request.getParameter("optionD");
		String answer = request.getParameter("answer");
		Optionoflistening optionoflistening = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, id);
		optionoflistening.setOptionA(optionA);
		optionoflistening.setOptionB(optionB);
		optionoflistening.setOptionC(optionC);
		optionoflistening.setOptionD(optionD);
		optionoflistening.setAnswer(answer);
		objectService.update(optionoflistening);
		ServletActionContext.getRequest().setAttribute("testid",
				optionoflistening.getTestid());
		return "successAdd";
	}

	/**
	 * 增加听力的最后一部分的答案和选词填空的答案
	 * 
	 * @return
	 */
	public String addCompoundchoosewords() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String answer = request.getParameter("answer");
		Compoundchoosewords compoundchoosewords = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, id);
		compoundchoosewords.setAnswer(answer);
		objectService.update(compoundchoosewords);
		ServletActionContext.getRequest().setAttribute("testid",
				compoundchoosewords.getTestid());
		return "successAdd";
	}

	/**
	 * 增加翻译问题
	 * 
	 * @return
	 */
	public String addTranslate() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		Translate translate = (Translate) objectService.getObjectById(
				Translate.class, id);
		translate.setTitle(title);
		objectService.update(translate);
		ServletActionContext.getRequest().setAttribute("testid",
				translate.getTestid());
		return "successAdd";
	}
	
	/*********************************一套题的添加************************************/	
	/**
	 * 增加试题标题
	 * 
	 * @return
	 */
	
	
	public String addOneTestName() {
		HttpServletRequest request = ServletActionContext.getRequest();
		int TestName_id = Integer.parseInt(request.getParameter("TestName_id"));
		String TestName_title = request.getParameter("TestName_title");
		Testname testname = (Testname) objectService.getObjectById(
				Testname.class, TestName_id);
		testname.setTitle(TestName_title);
		objectService.update(testname);

	/**
	 * 增加作文
	 * 
	 * @return
	 */
		int Composition_id = Integer.parseInt(request.getParameter("Composition_id"));
		String Composition_title = request.getParameter("Composition_title");
		Composition composition = (Composition) objectService.getObjectById(
				Composition.class, Composition_id);
		composition.setTitle(Composition_title);
		objectService.update(composition);

	/**
	 * 增加阅读文章
	 * 
	 * @return
	 */
		int Titlesofreading_id = Integer.parseInt(request.getParameter("Titlesofreading_id"));
		String Titlesofreading_title = request.getParameter("Titlesofreading_title");
		Titlesofreading titlesofreading = (Titlesofreading) objectService
				.getObjectById(Titlesofreading.class, Titlesofreading_id);
		titlesofreading.setTitle(Titlesofreading_title);
		objectService.update(titlesofreading);

	/**
	 * 增加阅读选项
	 * 
	 * @return
	 */
		int Optionsofreading_id = Integer.parseInt(request.getParameter("Optionsofreading_id"));
		String Optionsofreading_title = request.getParameter("Optionsofreading_title");
		String Optionsofreading_optionA = request.getParameter("Optionsofreading_optionA");
		String Optionsofreading_optionB = request.getParameter("Optionsofreading_optionB");
		String Optionsofreading_optionC = request.getParameter("Optionsofreading_optionC");
		String Optionsofreading_optionD = request.getParameter("Optionsofreading_optionD");
		String Optionsofreading_answer = request.getParameter("Optionsofreading_answer");
		Optionsofreading optionsofreading = (Optionsofreading) objectService
				.getObjectById(Optionsofreading.class, Optionsofreading_id);
		optionsofreading.setTitle(Optionsofreading_title);
		optionsofreading.setOptionA(Optionsofreading_optionA);
		optionsofreading.setOptionB(Optionsofreading_optionB);
		optionsofreading.setOptionC(Optionsofreading_optionC);
		optionsofreading.setOptionD(Optionsofreading_optionD);
		optionsofreading.setAnswer(Optionsofreading_answer);
		objectService.update(optionsofreading);

	/**
	 * 增加听力材料
	 * 
	 * @return
	 */
		int Lsteningmaterial_id = Integer.parseInt(request.getParameter("Lsteningmaterial_id"));
		String Lsteningmaterial_material = request.getParameter("Lsteningmaterial_material");

		System.out.println(listen);

		String listenMaterial = null;
		Listeningmaterial listeningmaterial = (Listeningmaterial) objectService
				.getObjectById(Listeningmaterial.class, Lsteningmaterial_id);

		// 只有文件改变的时候才重新上传
		if (Lsteningmaterial_material.equals(listeningmaterial.getMaterial())) {
			listenMaterial = Lsteningmaterial_material;
		} else {
			listenMaterial = "listening/" + listenFileName;
			upload();
		}

		listeningmaterial.setMaterial(listenMaterial);
		objectService.update(listeningmaterial);

	/**
	 * 增加听力选项
	 * 
	 * @return
	 */
		int Optionoflistening_id = Integer.parseInt(request.getParameter("Optionoflistening_id"));
		String Optionoflistening_optionA = request.getParameter("Optionoflistening_optionA");
		String Optionoflistening_optionB = request.getParameter("Optionoflistening_optionB");
		String Optionoflistening_optionC = request.getParameter("Optionoflistening_optionC");
		String Optionoflistening_optionD = request.getParameter("Optionoflistening_optionD");
		String Optionoflistening_answer = request.getParameter("Optionoflistening_answer");
		Optionoflistening optionoflistening = (Optionoflistening) objectService
				.getObjectById(Optionoflistening.class, Optionoflistening_id);
		optionoflistening.setOptionA(Optionoflistening_optionA);
		optionoflistening.setOptionB(Optionoflistening_optionB);
		optionoflistening.setOptionC(Optionoflistening_optionC);
		optionoflistening.setOptionD(Optionoflistening_optionD);
		optionoflistening.setAnswer(Optionoflistening_answer);
		objectService.update(optionoflistening);
	

	/**
	 * 增加听力的最后一部分的答案和选词填空的答案
	 * 
	 * @return
	 */

		int Compoundchoosewords_id = Integer.parseInt(request.getParameter("Compoundchoosewords_id"));
		String Compoundchoosewords_answer = request.getParameter("Compoundchoosewords_answer");
		Compoundchoosewords compoundchoosewords = (Compoundchoosewords) objectService
				.getObjectById(Compoundchoosewords.class, Compoundchoosewords_id);
		compoundchoosewords.setAnswer(Compoundchoosewords_answer);
		objectService.update(compoundchoosewords);
	

	/**
	 * 增加翻译问题
	 * 
	 * @return
	 */

		int Translate_id = Integer.parseInt(request.getParameter("Translate_id"));
		String Translate_title = request.getParameter("Translate_title");
		Translate translate = (Translate) objectService.getObjectById(
				Translate.class, Translate_id);
		translate.setTitle(Translate_title);
		objectService.update(translate);
		ServletActionContext.getRequest().setAttribute("testid",
				translate.getTestid());
		return "successAdd";
	}

}
