package io.zdp.open.ledger.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.client.ZdpClient;

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

}
