package sample.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 어노테이션 http://noritersand.tistory.com/156
 * Handles requests for the application home page.
 */
@Controller
// 이코드 넣을경우 http://localhost:8080/common/common/common/*
// 이코드 없을경우 http://localhost:8080/common/common/*
@RequestMapping("/search/*")
public class SearchController {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SearchController.class);
	protected Log				log		= LogFactory.getLog(this.getClass());
										
	@Autowired
	// @Autowired(required=false)//필수가 아닌경우 빈으로 등록 안하게 설정
	// @Qualifier("CommonService1")//는 타입으로(by type) �아줌. 똑같은 클래스가 있을경우
	// CommonService1 라는 구분값으로 �음
	// @Resource(name="testDao") //는 이름으로(by name) �아줌
	private SearchService		svc;
								
	/**
	 * http://localhost:8080/common/common/common/
	 * http://localhost:8080/common/common/
	 * Simply selects the home view to render by returning its name. 스프링 프로젝터
	 * 생성시 기본 메소드
	 */
	@RequestMapping(value = "/")
	public String Search() {
		
		logger.info("/Search/");
		
		return "saerch/search";
	}
	
	/**
	 * @param word
	 * @return
	 */
	@RequestMapping(value = "/Word/{word}")
	@ResponseBody
	public String SearchWordPath(@PathVariable String word) {
		
		logger.info("/Search/Word/{word}:" + word);
		
		return word;
	}
	
	/**
	 * @param word
	 * @return
	 */
	@RequestMapping(value = "/Word")
	@ResponseBody
	public String SearchWord(@RequestParam("word") String word) {
		
		logger.info("/Search/Word:" + word);
		
		return word;
	}
	
	/** db 조회후 결과 반납
	 * @param word
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/Words")
	// @ResponseBody
	public String SearchWordList(@RequestParam("word") String word, Model model) {
		
		logger.info("/Search/Words:" + word);
		
		List<String> list = svc.SearchWord(word);
		model.addAttribute("list", list);
		
		// return list;
		return "form/listForm";
	}
	
	// 제이슨 http://java.ihoney.pe.kr/283
	// 제이슨 http://roqkffhwk.tistory.com/120
}
