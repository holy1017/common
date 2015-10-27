package sample;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import common.CommonVO;
import common.common.CommandMap;

/**
 * ������̼� http://noritersand.tistory.com/156 Handles requests for the application
 * home page.
 */
@Controller
// ���ڵ� ������� http://localhost:8080/common/sample/sample/*
// ���ڵ� ������� http://localhost:8080/common/sample/*
// @RequestMapping("/sample/*")
public class SampleController {

	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	protected Log log = LogFactory.getLog(SampleController.class);

	@Autowired
	// @Autowired(required=false)//�ʼ��� �ƴѰ�� ������ ��� ���ϰ� ����
	// @Qualifier("CommonService1")//�� Ÿ������(by type) ?����. �Ȱ��� Ŭ������ �������
	// CommonService1 ��� ���а����� ?��
	// @Resource(name="testDao") //�� �̸�����(by name) ?����
	private SampleService svc;

	/**
	 * http://localhost:8080/common/sample/sample/
	 * http://localhost:8080/common/sample/ Simply selects the home view to
	 * render by returning its name. ������ �������� ������ �⺻ �޼ҵ�
	 */
	@RequestMapping(value = "/")
	public String sample(Locale locale, Model model) {

		log.debug(SHA256("adgda").length() + ":" + SHA256("adgda"));

		// logger.info("logger Welcome home! The client locale is.");
		log.info("sample");
		// log.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "sample";
	}
	
	/**
	 * http://localhost:8080/common/sample/RequsetParam
	 * @param id
	 * @param req
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/RequsetParam")
	public String RequsetParam(@RequestParam(value="id", required=false, defaultValue="-1") String id,HttpServletRequest req, @ModelAttribute("model_Attribute") CommonVO vo) {
		req.setAttribute("id", id);
		return "debug/debug";
		// ...
	}
	
/*	@RequestMapping(value = "/RequsetParam1")
	public String RequsetParam1(@RequestParam<String, String> params,HttpServletRequest req, @ModelAttribute("model_Attribute") CommonVO vo) {
		req.setAttribute("id", id);
		return "debug/debug";
		// ...
	}
*/
	

	/**
	 * http://localhost:8080/common/sample/path/7BuserId7D/main.action
	 * 
	 * @param req
	 * @param userId
	 *            /req/{userId}/main.action �ּҿ� �ִ� userId�� @PathVariable ���� ����
	 *            �޾ƿ�
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/path/{userId}/main.action")
	public String PathVariable(HttpServletRequest req, @PathVariable String userId) throws Exception {

		log.debug("PathVariable:" + userId);

		req.setAttribute("userId", userId);
		return "debug/debug";
	}

	/**
	 * http://localhost:8080/common/sample/json/%7Bid%7D
	 * 
	 * @ResponseBody ���� ���̽� ���̺귯�� �ʿ�
	 *               <beans:bean id="jacksonMessageConverter" class=
	 *               "org.springframework.http.converter.json.MappingJacksonHttpMessageConverter"
	 *               /> // <dependency> //
	 *               <groupId>org.codehaus.jackson</groupId> //
	 *               <artifactId>jackson-mapper-asl</artifactId> //
	 *               <version>1.9.13</version> // </dependency>
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/json/{id}")
	@ResponseBody
	public CommonVO getByIdInJSON(@PathVariable String id) {

		CommonVO vo = new CommonVO();
		vo.setId(id);
		vo.setName("ellie");

		return vo;
	}

	/**
	 * http://localhost:8080/common/sample/getVocTypeList ���� ���̽� �ʿ�
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getVocTypeList")
	@ResponseBody
	public ArrayList<Object> getVocTypeList() throws Exception {

		HashMap<String, Object> vocData = new HashMap<String, Object>();
		ArrayList<Object> data = new ArrayList<Object>();
		data.add("sdaffda3");
		data.add("sdaffda1");
		data.add("sdaffda2");
		vocData.put("data", data);
		return (ArrayList<Object>) vocData.get("data");
	}

	/**
	 * http://localhost:8080/common/sample/req/some.do
	 * 
	 * @ModelAttribute ����
	 * @param req
	 * @param vo
	 * @return
	 */
	@RequestMapping("/req/some.do")
	public String model_Attribute(HttpServletRequest req, @ModelAttribute("model_Attribute") CommonVO vo) {
		req.setAttribute("CommonVO", vo);
		return "debug/debug";
		// ...
	}

	/**
	 * ��Ʈ�ѷ��� ���ε� ��� �޼������ ȣ��� ������ �ݺ������� ����ǹǷ� ȿ������ ����ؾ� �Ѵ�. requestScope �κп���
	 * ��µ�
	 * 
	 * @return
	 */
	@ModelAttribute("refModelTest")
	public String refModelTest() {
		return "hello-o ModelAttribute!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		// request.setAttirubte("refModelTest", "hello-o") �� ������
		// ����� Ŭ������ �������� ����ȴ�.
	}

	/**
	 * addFlashAttribute �̿��ϱ�. ������ ������. addFlashAttribute�� ������ �����ϸ� �ϳ��� �ȵ�
	 * http://roqkffhwk.tistory.com/121
	 * 
	 * http://localhost:8080/common/sample/redirectPostTest ���� ��û��
	 * http://localhost:8080/common/sample/listTest ���� ����
	 * 
	 * @param redirectAttr
	 * @return
	 */
	@RequestMapping(value = "/redirectPostTest")
	public String redirectPostTest(RedirectAttributes redirectAttr) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("param1", "�����Ķ�1");
		map.put("param2", "�����Ķ�2");
		redirectAttr.addFlashAttribute("param1", map);
		// return "redirect:listTest";
		return "forward:listTest";
	}

	/**
	 * http://localhost:8080/common/sample/redirectPostTest ���� ��û�� �����
	 * 
	 * @return
	 */
	@RequestMapping(value = "/listTest")
	// @ResponseBody
	public String listTest() {
		return "debug/debug";
	}

	/**
	 * addFlashAttribute �̿��ϱ�. ���� ������ http://roqkffhwk.tistory.com/121
	 * 
	 * @param redirectAttr
	 * @return
	 */
	@RequestMapping(value = "/redirectPostTest1")
	public String redirectPostTes1t(RedirectAttributes redirectAttr) {
		redirectAttr.addFlashAttribute("param1", "�����Ķ�");
		return "redirect:listTest1";
	}

	@RequestMapping(value = "/listTest1")
	public String listTes1t() {
		return "debug/debug";
	}

	/**
	 * http://localhost:8080/common/sample/openSampleList.do
	 * 
	 * @param commandMap
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/openSampleList.do")
	public ModelAndView openSampleList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("debug/debug");
		log.debug("���ͼ��� �׽�Ʈ");

		return mv;
	}

	@RequestMapping(value = "/debug/jsp/{jsp}")
	// @ResponseBody
	public String debugjsp(@PathVariable String jsp) {
		log.debug("/debug/jsp/{jsp}:" + jsp);
		// return jsp;
		// return jsp;
		return "debug/" + jsp;
	}

	@RequestMapping(value = { "/jsp/{jsp}" })
	// @ResponseBody
	public String jsp(@PathVariable String jsp) {
		log.debug(" /jsp/{jsp}, /{jsp}" + jsp);
		return jsp;
	}

	@RequestMapping(value = { "/form/{jsp}" })
	// @ResponseBody
	public String formjsp(@PathVariable String jsp) {
		log.debug("/form/{jsp}:" + jsp);
		return "form/" + jsp;
	}

	@RequestMapping(value = { "/{jsp}" })
	// @ResponseBody
	public String jspor(@PathVariable String jsp) {
		log.debug("/{jsp}:" + jsp);
		// return jsp;
		// return jsp;
		return jsp;
	}

	@RequestMapping(value = "/listForm")
	public String listForm(Model model) {

		log.info("listForm");

		List<String> list = new ArrayList<String>();

		for (int i = 0; i < 9; i++) {
			list.add("list" + i);
			log.info(list.get(i));
		}

		model.addAttribute("list", list);

		return "form/listForm";
	}

	/**
	 * ��ȣȭ
	 * 
	 * @param str
	 * @return
	 */
	@RequestMapping(value = { "/SHA256/{str}" })
	@ResponseBody
	public String SHA256(@PathVariable String str) {
		String SHA = "";
		try {
			MessageDigest sh = MessageDigest.getInstance("SHA-256");
			sh.update(str.getBytes());
			byte byteData[] = sh.digest();
			SHA = new String(byteData, 0, byteData.length);
			System.out.println(SHA);
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			SHA = sb.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			SHA = null;
		}
		return SHA;
	}
	// ���̽� http://java.ihoney.pe.kr/283
	// ���̽� http://roqkffhwk.tistory.com/120

	/**
	 * �ּ�â�� ���� ġ�� �ȵ�
	 * @param session
	 * @return
	 */
	@RequestMapping(value = { "/session" })
	@ResponseBody
	public String sessionTest(HttpSession session) {
		
		log.debug("session");
		
		session.setAttribute("sessiontest", "session test!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		return "session test!??";
	}
	/**
	 * �ּ�â�� ���� ġ�� �ȵ�
	 * @param session
	 * @return
	 */
	@RequestMapping(value = { "/formtest" })
	@ResponseBody
	public String formtest(HttpSession session) {
		
		log.debug("formtest");
		
		session.setAttribute("sessiontest", "session test!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		return "formtest";
	}
	
	/**
	 * �ּ�â�� ���� ġ�� �ȵ�
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(value = { "/formfiletest" })
	@ResponseBody//�ּ�â�� ���� ġ�� �ȵ�
	public String formfiletest(HttpSession session, HttpServletRequest request) {
		
		log.debug("formfiletest");
		
		session.setAttribute("sessiontest", "session test!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		svc.insertFile( request);
		return "formfiletest";
	}
	
	@RequestMapping(value="/testMapArgumentResolver")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception{
		
		log.debug("testMapArgumentResolver");
		
	    ModelAndView mv = new ModelAndView("");
	     
	    if(commandMap.isEmpty() == false){
	        Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
	        Entry<String,Object> entry = null;
	        while(iterator.hasNext()){
	            entry = iterator.next();
	            log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
	        }
	    }
	    return mv;
	}

}
