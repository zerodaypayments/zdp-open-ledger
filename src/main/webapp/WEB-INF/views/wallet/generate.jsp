<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Generate an address - ZDP Open Ledger" name="main">

		<div class="pure-g">
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
		    
	    		<c:if test="${address != null }">
			    		
					<br>
								    		
	   			   	<h1>Unique address</h1>
	   			   	
					<form class="pure-form">
					
					    <fieldset class="pure-group">
					        <input type="text" class="pure-input-1" value="${address}" readonly>
					    </fieldset>
					    
					</form>		   			   	
	   			   	
	   			   	<h4>Private key: ${privKey58}</h4>
	   			   	
	   			   	<br>
	   			   	
		    		<br>
		    		
		    		<hr>
	   		
	   				<br>
	   				
	    		</c:if>
   				
   			   	<h1>Generate a unique address</h1>
				   			   	
				<form class="pure-form" method="post" action="<c:url value='/wallet/generate.html'/>">
				
				    <fieldset class="pure-group">
				    	Private key:
				        <input type="text" name="privKey58" class="pure-input-1" value="${acc.privateKey58}">
				    </fieldset>
				    
   					<button class="pure-button button-zdp" href="<c:url value='/wallet/generate.html'/>">Generate a unique address</button>
				    
				</form>
	    
		    </div>
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		</div>
		
</page:apply-decorator>
