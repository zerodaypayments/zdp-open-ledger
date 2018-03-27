package io.zdp.open.ledger.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexAction {

	@GetMapping(path = "/index.html")
	public ModelAndView index(HttpServletRequest req, HttpServletResponse resp) {

		ModelAndView mav = new ModelAndView("index/index");
	
		return mav;
	}

	@GetMapping(path = "/error/404.html")
	public ModelAndView error404(HttpServletRequest req, HttpServletResponse resp) {
		return new ModelAndView("index/404");
	}

	@GetMapping(path = "/error/500.html")
	public ModelAndView error500(HttpServletRequest req, HttpServletResponse resp) {
		return new ModelAndView("index/500");
	}

	@GetMapping(path = "/privacy-policy")
	public ModelAndView privacyPolicy(HttpServletRequest req, HttpServletResponse resp) {
		return new ModelAndView("index/privacyPolicy");
	}

	@GetMapping(path = "/terms-of-use")
	public ModelAndView termsOfUse(HttpServletRequest req, HttpServletResponse resp) {
		return new ModelAndView("index/termsOfUse");
	}

}
