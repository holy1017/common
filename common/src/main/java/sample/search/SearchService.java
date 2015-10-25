package sample.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
// @Service("CommonService1")
public class SearchService {
	protected Log				log		= LogFactory.getLog(this.getClass());
	@Autowired
	// @Qualifier("CommonDao1")
	private SearchDAO dao;

	public List<String> SearchWord(String word) {
		// TODO Auto-generated method stub
		List<String> list=dao.SearchWord(word);
		return list;
	}

}
