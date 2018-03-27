<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="ZDP Open Ledger" name="main">

	<div class="pure-g">
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
	    
	    	<h1>ZDP Open Ledger</h1>
	    	
	    	<h4>Search by transaction uuid or address:</h4>
	    	
		    <form class="pure-form">
	   	    	<input class="pure-input-1" type="text">
	   	    	<br><br>
	   	    	
   	    	    <button type="submit" class="pure-button pure-input-1-2 button-zdp">Search</button>
	   	    </form>
	   	    
	    </div>
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	</div>		


</page:apply-decorator>
