package junit.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cet4system.domain.Examinee;
import com.cet4system.domain.Needmarking;
import com.cet4system.service.ObjectService;

public class ObjectServiceTest {
	Object obj = null;
	static ObjectService objectService = null;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext-beans.xml");
		objectService = (ObjectService)context.getBean("objectService");
	}

	@Test
	public void testSave() {
		Examinee examinee=new Examinee();
		//examinee.setCandidateNo(12345678);
		examinee.setName("熊明");
		examinee.setSex("男");
		examinee.setExamineeOfSchool("重庆邮电大学");
		examinee.setImage("images/examinee/xiongminglin.jpg");
		objectService.save(examinee);
	}

	@Test
	public void testGetObjectById() {
		Examinee examinee=(Examinee) objectService.getObjectById(Examinee.class, "511130131101001");
		System.out.println(examinee.getWritingGrade());
	}

	@Test
	public void testUpdate() {
		Examinee examinee=(Examinee) objectService.getObjectById(Examinee.class, 1);
		examinee.setWritingGrade(129);
		objectService.update(examinee);
		System.out.println(examinee.getWritingGrade());
	}

	@Test
	public void testDelete() {
		objectService.delete(Examinee.class, 14);
	}

	@SuppressWarnings("unchecked")
	@Test
	public void testGetObject() {
		List<Examinee> examinees=objectService.getObject("Examinee");
		for(Examinee examinee:examinees){
			System.out.println(examinee.getCandidateNo());
		}
	}
	@Test
	public void test(){
		Needmarking ndm=(Needmarking)objectService.getObjectById(Needmarking.class, "511130131101001");
		//Examinee examinee=(Examinee)objectService.getObjectById(Examinee.class,"511130131101001");
		//System.out.println(examinee.getCandidateNo());
		System.out.println(ndm.getCandidateNo()+ndm.getAnswerOfcomprehensive()+ndm.getAnswerOftranslate());
		
	}
	
	@SuppressWarnings("unchecked")
	@Test
	public void testPage(){
		List<Examinee> examinees = objectService.page("Examinee", 0, 4);
		for(Examinee examinee:examinees){
			System.out.println(examinee.getCandidateNo());
		}
	}

}
