import com.mmall.common.ServerResponse;
import com.mmall.pojo.User;
import com.mmall.service.IUserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import static org.junit.Assert.assertNotNull;

/**
 * 用户测试类
 * Created by huankai on 2018/10/21.
 */
public class UserTest {
    private IUserService iUserService;

    @Before
    public void init() {
        ApplicationContext aCtx = new FileSystemXmlApplicationContext("classpath:applicationContext.xml");
        IUserService iUserService = (IUserService) aCtx.getBean("iUserService");
        assertNotNull(iUserService);
        this.iUserService = iUserService;
    }

    @Test
    public void testData() {
        ServerResponse<User> response = iUserService.login("admin","admin");
    }

}
