package io.zdp.open.ledger.web;

import java.math.BigDecimal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.api.model.v1.SubmitTransactionResponse;
import io.zdp.client.ZdpClient;
import io.zdp.common.crypto.CryptoUtils;
import io.zdp.common.crypto.model.AccountKeys;

@Controller
public class TransferAction {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ZdpClient zdp;

	@RequestMapping(path = "/transfer", method = RequestMethod.GET)
	public ModelAndView transfer() {

		ModelAndView mav = new ModelAndView("transfer/index");

		return mav;

	}

	@RequestMapping(path = "/transfer", method = RequestMethod.POST)
	public ModelAndView transfer(String privateKey, String to, String amount, String memo) {

		ModelAndView mav = new ModelAndView("transfer/confirmation");

		AccountKeys key = new AccountKeys(privateKey);
		String from = CryptoUtils.generateUniqueAddressByPublicKey58(key.getPublicKey58());

		try {
			SubmitTransactionResponse response = zdp.transfer(privateKey, from, to, new BigDecimal(amount), memo);
			mav.addObject("resp", response);
		} catch (Exception e) {
			log.error("Error: ", e);
		}

		return mav;

	}

}
