package lightboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
// @Service("CommonService1")
public class LightboardService {

	@Autowired
	// @Qualifier("CommonDao1")
	private LightboardDao dao;

}
