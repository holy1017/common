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
	@Autowired(required = false) // �ʼ��� �ƴѰ�� ������ ��� ���ϰ� ����
	@Qualifier("commonTemplate") // �� Ÿ������(by type) �O����. �Ȱ��� Ŭ������
									// �������CommonService1 ��� ���а����� �O��
	// @Resource(name="testDao") //�� �̸�����(by name) �O����
	private SqlSessionTemplate sql;

}
