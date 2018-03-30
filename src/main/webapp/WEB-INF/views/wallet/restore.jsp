<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Wallet - ZDP Open Ledger" name="main">

		<div class="pure-g">
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
	    
			   	<h1>Restore Wallet</h1>
			   	<h4>Please, enter the 24 words that will be used to re-generate the private key for your wallet</h4>
   			   	
   			   	<hr>
				   			   	
				<form class="pure-form" method="post" action="<c:url value='/wallet/restore.html'/>">
				
				    <fieldset class="pure-group">
				    	Mnemonics:
				        <select class="pure-input-1" name="language">
							<option value="ENGLISH">English</option>
							<option value="CHINESE_SIMPLIFIED">Chinese Simplified</option>
							<option value="CHINESE_TRADITIONAL">Chinese Traditional</option>
							<option value="FRENCH">French</option>
							<option value="ITALIAN">Italian</option>
							<option value="JAPANESE">Japanese</option>
							<option value="KOREAN">Korean</option>
							<option value="SPANISH">Spanish</option>        	
				        </select>
				        <textarea rows="24" class="pure-input-1" name="mnemonics"></textarea>
				    </fieldset>
					<button class="pure-button button-zdp" href="<c:url value='/wallet/index.html'/>">Restore</button>
				</form>   			   	
		    	
				
		    </div>
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		</div>
					
</page:apply-decorator>
