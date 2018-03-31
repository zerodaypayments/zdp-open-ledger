package io.zdp.open.ledger.web;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.bitcoinj.core.AddressFormatException;
import org.bitcoinj.core.Base58;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import io.zdp.client.ZdpClient;
import io.zdp.common.crypto.CryptoUtils;
import io.zdp.common.crypto.model.AccountKeys;
import io.zdp.common.utils.Mnemonics;
import io.zdp.common.utils.Mnemonics.Language;

@Controller
public class WalletAction {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ZdpClient zdp;

	@RequestMapping(path = "/wallet/index", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam(required = false, name = "lang") String langStr) {

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
	public ModelAndView restore(@RequestParam String mnemonics, @RequestParam Language language) {

		ModelAndView mav = new ModelAndView("wallet/index");

		List<String> words = java.util.Arrays.asList(StringUtils.split(mnemonics));

		byte[] privateKey = Mnemonics.generateSeedFromWords(language, words);

		AccountKeys acc = new AccountKeys(Base58.encode(privateKey));

		mav.addObject("acc", acc);

		mav.addObject("mnemonics", StringUtils.join(words, "&#13;&#10;"));

		return mav;

	}

	@RequestMapping(path = "/wallet/balance", method = RequestMethod.GET)
	public ModelAndView balance() {

		ModelAndView mav = new ModelAndView("wallet/balance");

		return mav;

	}

	@RequestMapping(path = "/wallet/balance", method = RequestMethod.POST)
	public ModelAndView balance(@RequestParam String privKey58) {

		ModelAndView mav = new ModelAndView("wallet/balance");

		try {
			mav.addObject("balance", zdp.getBalance(privKey58).getAmount());

		} catch (Exception e) {
			log.error("Error: ", e);
			mav.addObject("balance", "cannot be retrieved at the moment");
		}

		try {
			Base58.decode(privKey58);
			mav.addObject("privKey58", privKey58);
		} catch (AddressFormatException e) {
			log.error("Error: ", e);
		}

		return mav;

	}

	@RequestMapping(path = "/wallet/generate", method = RequestMethod.GET)
	public ModelAndView generate() {

		ModelAndView mav = new ModelAndView("wallet/generate");

		return mav;

	}

	@RequestMapping(path = "/wallet/generate", method = RequestMethod.POST)
	public ModelAndView generate(@RequestParam String privKey58) {

		ModelAndView mav = new ModelAndView("wallet/generate");
		
		mav.addObject("address", null);

		try {
			AccountKeys key = new AccountKeys(privKey58);
			String address = CryptoUtils.generateUniqueAddressByPublicKey58(key.getPublicKey58());

			mav.addObject("address", address);
		} catch (Exception e) {
			log.error("Error: ", e);
		}

		try {
			Base58.decode(privKey58);
			mav.addObject("privKey58", privKey58);
		} catch (AddressFormatException e) {
			log.error("Error: ", e);
		}

		return mav;
		
	}

}
