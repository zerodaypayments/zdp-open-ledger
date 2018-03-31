package io.zdp.open.ledger.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.api.model.v1.ListTransactionsResponse;
import io.zdp.api.model.v1.ledger.ListAllTransactionsRequest;
import io.zdp.client.ZdpClient;

@Controller
public class IndexAction {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ZdpClient zdp;

	@GetMapping(path = "/index.html")
	public ModelAndView index(HttpServletRequest req, HttpServletResponse resp) {

		ModelAndView mav = new ModelAndView("index/index");
		return mav;
	}

	@GetMapping(path = "/data/listTransactions")
	public @ResponseBody ListTransactionsResponse listTransactions() {

		ListTransactionsResponse listTransactions = new ListTransactionsResponse();

		try {
			ListAllTransactionsRequest txReq = new ListAllTransactionsRequest();
			txReq.setPage(0);
			txReq.setPageSize(10);

			listTransactions = zdp.listTransactions(txReq);

		} catch (Exception e) {
			log.error("Error: ", e);
			return new ListTransactionsResponse();
		}

		return listTransactions;
	}

	@GetMapping(path = "/data/countAccounts")
	@ResponseBody
	public Long countAccounts() {
		try {
			return zdp.countAccounts();
		} catch (Exception e) {
			log.error("Error: ", e);
		}
		return 0L;
	}

	@GetMapping(path = "/data/countTransactions")
	@ResponseBody
	public Long countTransactions() {
		try {
			return zdp.countTransactions();
		} catch (Exception e) {
			log.error("Error: ", e);
		}
		return 0L;
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
