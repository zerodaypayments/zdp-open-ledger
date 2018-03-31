<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<div class="pure-g">
    
    <div class="pure-u-1 pure-u-md-1-3"></div>
    
    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
    
    	<h1>Transaction search</h1>
    	
    	<h4>Search by transaction uuid or address:</h4>
    	
	    <form class="pure-form" action="<c:url value='/search.html'/>" method="get">
   	    	<input class="pure-input-1 pure-input-rounded" type="text" name="q">
   	    	<br><br>
   	    	
			<button type="submit" class="pure-button pure-input-1-2 button-zdp">Search</button>
   	    </form>
   	    
    </div>
    
    <div class="pure-u-1 pure-u-md-1-3"></div>
    
</div>