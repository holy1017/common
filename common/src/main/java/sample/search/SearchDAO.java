package sample.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
// @Repository("CommonDao1")
public class SearchDAO {
	protected Log				log	= LogFactory.getLog(this.getClass());
	
	@Autowired
	// @Autowired(required = false) // 필수가 아닌경우 빈으로 등록 안하게 설정
	@Qualifier("sampleTemplate") // 는 타입으로(by type) 찿아줌. 똑같은 클래스가
	                             // 있을경우CommonService1 라는 구분값으로 찿음
	// @Resource(name="testDao") //는 이름으로(by name) 찿아줌
	private SqlSessionTemplate	sql;
								
	public List<String> SearchWord(String word) {
		log.debug("SearchWord sql:" + sql);
		// TODO Auto-generated method stub
		
		List<String> list = sql.selectList("search.searchSelectList", word);
		
		log.debug("SearchWord list:" + list);
		
		return list;
	}
	
}
