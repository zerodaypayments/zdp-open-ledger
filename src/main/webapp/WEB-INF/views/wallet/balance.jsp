<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Check balance - ZDP Open Ledger" name="main">

		<div class="pure-g">
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
		    
	    		<c:if test="${balance != null }">
			    		
					<div style="background:#444;">
						
						<br>
									    		
		   			   	<h1>Wallet balance</h1>
		   			   	
		   			   	<h1>${balance}</h1>
		   			   	
		   			   	<h4>Private key: ${privKey58}</h4>
		   			   	
		   			   	<br>
	   			   </div>
	   			   	
	    		</c:if>
   		
	   				
   			   	<h1>Check wallet balance</h1>
				   			   	
				<form class="pure-form" method="post" action="<c:url value='/wallet/balance.html'/>">
				
				    <fieldset class="pure-group">
				    	Private key:
				        <input type="text" name="privKey58" class="pure-input-1" value="${acc.privateKey58}">
				    </fieldset>
				    
   					<button class="pure-button button-zdp" href="<c:url value='/wallet/index.html'/>">Check balance</button>
				    
				</form>
					   			   	
	    
		    </div>
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		</div>
					
</page:apply-decorator>