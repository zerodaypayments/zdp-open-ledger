package io.zdp.open.ledger.web.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.MDC;
import org.slf4j.Logger;

/*
 * This filter will contain anything that is necessary for requiest-wide injection
 */
public class MagicFilter implements Filter {

	private static final String LOG4J_REQUEST_IP_KEY = "REQUEST_IP";

	private Logger log = org.slf4j.LoggerFactory.getLogger(this.getClass());

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		log.debug("Let's do some magic!");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;

		// Set current time
		{
			long time = System.currentTimeMillis();
			request.setAttribute("time", time);
			request.setAttribute("magicCurrentDate", new Date());
		}

		// Set current IP address (for loggin purposes)
		{
			MDC.put(LOG4J_REQUEST_IP_KEY, request.getRemoteAddr());
		}

		long st = System.currentTimeMillis();

		try {

			chain.doFilter(request, response);

		} catch (Exception e) {

			throw e;

		} finally {

			long et = System.currentTimeMillis();

			log.debug("Request took [" + (et - st) + "] ms [" + req.getRequestURL() + "]");

			// remove current IP address (which was used for loggin purposes)
			{
				MDC.remove(LOG4J_REQUEST_IP_KEY);
			}
		}

	}

	@Override
	public void destroy() {
		log.debug("Magic is over!");
	}

}
