package pl.lukasz.majcher.spring_first_project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OMnieController {

    @RequestMapping("/omnie")
    public ModelAndView oMniePage() {
        return new ModelAndView("oMnie");
    }
}
