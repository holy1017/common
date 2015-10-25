package common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
// @Service("CommonService1")
public class CommonService {

	@Autowired
	// @Qualifier("CommonDao1")
	private CommonDao dao;

}
