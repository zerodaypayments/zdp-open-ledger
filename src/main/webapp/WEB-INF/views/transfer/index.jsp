<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Make a transfer - ZDP Open Ledger" name="main">

	<div class="pure-g">
		    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
	    
		   	<h1>Make a transfer</h1>
		   	
		   	<hr>
	    
	    
			<form class="pure-form pure-form-aligned">
			    <fieldset>
			        <div class="pure-control-group">
			            <label for="privateKey">Wallet key:</label>
			            <input id="privateKey" name="privateKey" type="password">
           	            <span class="pure-form-message-inline">Restore wallet</span>
			            
			        </div>
			
			        <div class="pure-control-group">
			            <label for="fromAddress">From address:</label>
			            <input name="fromAddress" id="fromAddress" type="text">
                        <span class="pure-form-message-inline">Generate an address</span>
			            
			        </div>
			
			        <div class="pure-control-group">
			            <label for="email">Email Address</label>
			            <input id="email" type="email" placeholder="Email Address">
			        </div>
			
			        <div class="pure-control-group">
			            <label for="foo">Supercalifragilistic Label</label>
			            <input id="foo" type="text" placeholder="Enter something here...">
			        </div>
			
			        <div class="pure-controls">
			            <label for="cb" class="pure-checkbox">
			                <input id="cb" type="checkbox"> I've read the terms and conditions
			            </label>
			
			            <button type="submit" class="pure-button zdp-button">Submit</button>
			        </div>
			    </fieldset>
			</form>	
	
	    </div>
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
	</div>
				
</page:apply-decorator>
