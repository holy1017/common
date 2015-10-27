package lightboard;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 어노테이션 http://noritersand.tistory.com/156
 * Handles requests for the application home page.
 */
@Controller
//이코드 넣을경우 http://localhost:8080/common/common/common/*
//이코드 없을경우 http://localhost:8080/common/common/*
//@RequestMapping("/common/*")
public class LightboardController {

	private static final Logger logger = LoggerFactory.getLogger(LightboardController.class);
	protected Log log = LogFactory.getLog(LightboardController.class); 

	@Autowired
	// @Autowired(required=false)//필수가 아닌경우 빈으로 등록 안하게 설정
	// @Qualifier("CommonService1")//는 타입으로(by type) �아줌. 똑같은 클래스가 있을경우
	// CommonService1 라는 구분값으로 �음
	// @Resource(name="testDao") //는 이름으로(by name) �아줌
	private LightboardService svc;

	/** 
	 * http://localhost:8080/common/common/common/
	 * http://localhost:8080/common/common/
	 * Simply selects the home view to render by returning its name. 스프링 프로젝터
	 * 생성시 기본 메소드
	 */
	@RequestMapping(value = "/")
	public String Common(Locale locale, Model model) {

		logger.info("logger Welcome home! The client locale is.");
		log.info("log Welcome home! The client locale is.");
//		log.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "common";
	}


	// 제이슨 http://java.ihoney.pe.kr/283
	// 제이슨 http://roqkffhwk.tistory.com/120
}
