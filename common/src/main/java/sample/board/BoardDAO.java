package sample.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("BoardDAO")
public class BoardDAO {
	
	// @Autowired
	@Autowired(required = false) // 필수가 아닌경우 빈으로 등록 안하게 설정
	@Qualifier("boardTemplate") // 는 타입으로(by type) 찿아줌. 똑같은 클래스가
									// 있을경우CommonService1 라는 구분값으로 찿음
	// @Resource(name="testDao") //는 이름으로(by name) 찿아줌
	private SqlSessionTemplate sql;

	public List<Map<String, Object>> BoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.selectList("Board.BoardList", map);
	}

}
