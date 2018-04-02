<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="ZDP Open Ledger" name="main">

	<jsp:include page="../common/search-panel.jsp" />
	
	<div class="pure-g">
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
    
    		<div id="tx-container" style="padding:20px; background:#111;margin-top:30px;margin-bottom:30px;color:#666;">
	    		<div style="font-size:20px;">
	    			...fetching latest transactions....
	    			<br>
					<i class="fa fa-spinner fa-spin" style="font-size:44px"></i>
	    		</div>
    		</div>
			
	    </div>
	    
	    <div class="pure-u-1 pure-u-md-1-3"></div>
	    
	</div>	
	
	<style type="text/css">
		#tx-list  {
			list-style: none;
		}
		#tx-list li {
			margin-top:10px;
		}
	</style>
	
	<script type="text/javascript">
		
		function init() {
			$.get( "<c:url value='/data/listTransactions.html'/>", function( html ) {
				$("#tx-container").html(html);
			});			
		}
	
	</script>

</page:apply-decorator>
