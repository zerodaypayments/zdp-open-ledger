package io.zdp.open.ledger.web;

import java.util.List;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.common.crypto.CryptoUtils;
import io.zdp.common.crypto.model.AccountKeys;
import io.zdp.common.utils.Mnemonics;
import io.zdp.common.utils.Mnemonics.Language;

@Controller
public class WalletAction {

	@RequestMapping(path = "/wallet/index", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam(required = false) String langStr) {

		Language lang = Language.ENGLISH;

		if (StringUtils.isNotBlank(langStr) && Language.valueOf(langStr) != null) {
			lang = Language.valueOf(langStr);
		}

		ModelAndView mav = new ModelAndView("wallet/index");

		AccountKeys acc = CryptoUtils.getNewAccount();

		mav.addObject("acc", acc);

		List<String> mnemonics = Mnemonics.generateWords(lang, acc.getPrivateKey58());

		mav.addObject("mnemonics", StringUtils.join(mnemonics, "&#13;&#10;"));

		return mav;

	}

	@RequestMapping(path = "/wallet/restore", method = RequestMethod.GET)
	public ModelAndView restore() {

		ModelAndView mav = new ModelAndView("wallet/restore");

		return mav;

	}

	@RequestMapping(path = "/wallet/restore", method = RequestMethod.POST)
	public ModelAndView restore(@RequestParam String mnemonics) {

		ModelAndView mav = new ModelAndView("wallet/restore");

		return mav;

	}

}
