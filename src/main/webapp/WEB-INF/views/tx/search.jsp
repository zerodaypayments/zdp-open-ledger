<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Transaction details - ZDP Open Ledger" name="main">

	<c:if test="${tx!=null}">
	
		<div class="pure-g">
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
		    
			   	<h1>Transaction Details</h1>
			   	<h4>${tx.txUuid}</h4>
			   	
			   	<hr>
				
				<form class="pure-form pure-form-aligned">
				
				   	
					 <fieldset>
					 
					        <div class="pure-control-group">
					            <label for="name">UUID: </label>
				   	   	    	<input type="text" value="${tx.txUuid}" readonly="readonly">
					        </div>
					        <div class="pure-control-group">
					            <label for="name">From: </label>
				   	   	    	<input type="text" value="${tx.from}" readonly="readonly">
					        </div>					        
					        <div class="pure-control-group">
					            <label for="name">To: </label>
				   	   	    	<input type="text" value="${tx.to}" readonly="readonly">
					        </div>					        
					        <div class="pure-control-group">
					            <label for="name">Date: </label>
				   	   	    	<input type="text" value="${tx.date}" readonly="readonly">
					        </div>
					        <div class="pure-control-group">
					            <label for="name">Amount: </label>
				   	   	    	<input type="text" value="${tx.amount}" readonly="readonly">
					        </div>
					        <div class="pure-control-group">
					            <label for="name">Fee: </label>
				   	   	    	<input type="text" value="${tx.fee}" readonly="readonly">
					        </div>
					        <div class="pure-control-group">
					            <label for="name">Memo: </label>
				   	   	    	<input type="text" value="${tx.memo}" readonly="readonly">
					        </div>					        					        
					</fieldset>
				   	
				   	
				</form>
		   	    
		    </div>
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		</div>
				
	</c:if>

</page:apply-decorator>
