package sample.board;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service("BoardService")
public class BoardService {
    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="BoardDAO")
    private BoardDAO dao;
     
    public List<Map<String, Object>> BoardList(Map<String, Object> map) throws Exception {
        return dao.BoardList(map);
    }
}
