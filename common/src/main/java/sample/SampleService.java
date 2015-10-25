package sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
// @Service("CommonService1")
public class SampleService {

	@Autowired
	// @Qualifier("CommonDao1")
	private SampleDao dao;

}
