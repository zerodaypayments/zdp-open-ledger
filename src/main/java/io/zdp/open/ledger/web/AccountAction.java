package io.zdp.open.ledger.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import io.zdp.client.ZdpClient;

@Controller
public class AccountAction {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ZdpClient zdp;

	@RequestMapping(path = "/accounts/count")
	@ResponseBody
	public long countAccounts() {

		log.debug("Count accounts");

		try {
			return zdp.countAccounts();
		} catch (Exception e) {
			log.error("Error: ", e);
		}

		return 0;

	}

}
