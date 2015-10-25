package common;
//MS949
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
// @Repository("CommonDao1")
public class CommonDao {

	// @Autowired
	@Autowired(required = false) // 필수가 아닌경우 빈으로 등록 안하게 설정
	@Qualifier("commonTemplate") // 는 타입으로(by type) 찿아줌. 똑같은 클래스가
									// 있을경우CommonService1 라는 구분값으로 찿음
	// @Resource(name="testDao") //는 이름으로(by name) 찿아줌
	private SqlSessionTemplate sql;

}
