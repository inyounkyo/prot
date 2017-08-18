package in.moduler.practice.tx.controller;

import in.moduler.practice.tx.service.TestingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

    @Autowired
    private TestingService testingService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value = "/txTest", method = RequestMethod.GET)
    public @ResponseBody
    Integer index() {
        try {
            testingService.insert();
            return 1;
        } catch (Exception e) {
            logger.error(String.valueOf(e));
        }
        return 0;
    }
}
