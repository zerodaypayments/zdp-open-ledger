<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Make a transfer - ZDP Open Ledger" name="main">

	<div class="pure-g">
		    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
	    
		   	<h1>Make a transfer</h1>
		   	
		   	<hr>
	    
			<form class="pure-form pure-form-aligned" method="post" action="<c:url value='/transfer.html'/>">
			    <fieldset>
			        <div class="pure-control-group">
			            <label for="privateKey">Wallet key:</label>
			            <input id="privateKey" name="privateKey" type="text">
			            
			        </div>
			
			        <div class="pure-control-group">
			            <label for="to">To address:</label>
			            <input name="to" id="to" type="text">
			        </div>

			        <div class="pure-control-group">
			            <label for="amount">Amount:</label>
			            <input name="amount" id="amount" type="text">
			        </div>

			        <div class="pure-control-group">
			            <label for="memo">Memo:</label>
			            <input name="memo" id="memo" type="text">
			        </div>

			        <div class="pure-controls">
			            <button type="submit" class="pure-button zdp-button">Submit</button>
			        </div>
			    </fieldset>
			</form>	
	
	    </div>
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
	</div>
				
</page:apply-decorator>
