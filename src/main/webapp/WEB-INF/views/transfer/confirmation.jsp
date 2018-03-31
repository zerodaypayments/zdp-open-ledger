<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Transfer Confirmation - ZDP Open Ledger" name="main">

	<div class="pure-g">
		    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
	    
		   	<h1>Transfer confirmation</h1>
		   	
		   	<hr>
	    
			<form class="pure-form pure-form-aligned">

			    <fieldset>

			        <div class="pure-control-group">
			            <label for="tx">Transaction UUID:</label>
			            <input name="tx" id="tx" type="text" value="${resp.txUuid}" readonly>
			        </div>

			        <div class="pure-control-group">
			            <label for="error">Error:</label>
			            <input name="error" id="error" type="text" value="${resp.error}" readonly>
			        </div>

			    </fieldset>
			</form>	
	
	    </div>
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
	</div>
				
</page:apply-decorator>
