package sample.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "BoardService")
	private BoardService svc;

	@RequestMapping(value = "/")
	public String BoardList(Map<String, Object> commandMap,Model model) throws Exception {

		List<Map<String, Object>> list = svc.BoardList(commandMap);
		model.addAttribute("list", list);

		return "board/boardList";
	}
}