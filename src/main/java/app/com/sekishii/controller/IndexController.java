package app.com.sekishii.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping({"/", "/login"})
    public String indexPage() {
        System.out.println("test");
        return "index";
    }
}
