package io.zdp.open.ledger.web;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.api.model.v1.GetTransactionDetailsResponse;
import io.zdp.client.ZdpClient;

@Controller
public class SearchAction {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ZdpClient zdp;

	@RequestMapping(path = "/search")
	public ModelAndView searchTransaction(@RequestParam String q) {

		log.debug("Search: " + q);

		ModelAndView mav = null;

		if (StringUtils.isNotBlank(q)) {

			if (q.startsWith("tx")) {

				mav = new ModelAndView("tx/search");

				try {
					GetTransactionDetailsResponse tx = zdp.getTransactionDetails(q);

					if (StringUtils.isNotBlank(tx.getTxUuid())) {
						mav.addObject("tx", tx);
					}

				} catch (Exception e) {
					log.error("Error: ", e);
				}

			} else if (q.startsWith("zdp")) {

				mav = new ModelAndView("tx/search");

				try {
					GetTransactionDetailsResponse tx = zdp.getTransactionDetails(q);
					mav.addObject("tx", tx);
				} catch (Exception e) {
					log.error("Error: ", e);
				}

			} else {
				mav = new ModelAndView("tx/search");
			}

		} else {
			mav = new ModelAndView("index/index");
		}

		return mav;

	}

}
