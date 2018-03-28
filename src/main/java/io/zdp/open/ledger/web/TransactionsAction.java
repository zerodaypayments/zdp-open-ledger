package io.zdp.open.ledger.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.api.model.v1.GetTransactionDetailsResponse;
import io.zdp.client.ZdpClient;

@Controller
public class TransactionsAction {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ZdpClient zdp;

	@RequestMapping(path = "/transaction/search")
	public ModelAndView searchTransaction(@RequestParam String uuid) {

		log.debug("Transaction UUID: " + uuid);

		ModelAndView mav = new ModelAndView("tx/search");

		try {
			GetTransactionDetailsResponse tx = zdp.getTransactionDetails(uuid);
			mav.addObject("tx", tx);
		} catch (Exception e) {
			log.error("Error: ", e);
		}

		return mav;

	}

	@RequestMapping(path = "/transaction/count")
	@ResponseBody
	public long countTransaction() {

		log.debug("Count transactions");

		try {
			return zdp.countTransactions();
		} catch (Exception e) {
			log.error("Error: ", e);
		}

		return 0;

	}

}
