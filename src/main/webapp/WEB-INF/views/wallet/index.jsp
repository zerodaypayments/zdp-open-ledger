<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<page:apply-decorator title="Wallet - ZDP Open Ledger" name="main">

		<div class="pure-g">
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		    <div class="pure-u-1 pure-u-md-1-3" style='text-align: center;'>
	    
   			   	<h1>Wallet</h1>

				<h4>
					Write down the private key or the list of words (which you can use to re-generate the private key)
				</h4>
   			   	
   			   	<hr>
				   			   	
				<form class="pure-form">
				
				    <fieldset class="pure-group">
				    	Private key:
				        <input type="text" class="pure-input-1" value="${acc.privateKey58}">
				    </fieldset>
				    
				    <fieldset class="pure-group">
				    	Mnemonics:
				        <select class="pure-input-1" onchange="changeLanguage()" id="language">
							<option value="ENGLISH">English</option>
							<option value="CHINESE_SIMPLIFIED">Chinese Simplified</option>
							<option value="CHINESE_TRADITIONAL">Chinese Traditional</option>
							<option value="FRENCH">French</option>
							<option value="ITALIAN">Italian</option>
							<option value="JAPANESE">Japanese</option>
							<option value="KOREAN">Korean</option>
							<option value="SPANISH">Spanish</option>        	
				        </select>
				        <textarea rows="24" class="pure-input-1" readonly="readonly">${mnemonics}</textarea>
				    </fieldset>
				
				</form>   			   	
		    	
				<a class="pure-button button-zdp" href="<c:url value='/wallet/index.html'/>?lang=${param.lang}">Create another wallet</a>
				
				<a class="pure-button button-zdp" href="<c:url value='/wallet/restore.html'/>">Restore wallet</a>
				   	
		    </div>
		    
		    <div class="pure-u-1 pure-u-md-1-3"></div>
		    
		</div>
		
		<script type="text/javascript">
			function changeLanguage() {
				document.location="<c:url value='/wallet/index.html'/>?lang="+$('#language').val();
				
			}
			function init() {
				
				<c:choose>
					<c:when test="${param.lang=='ENGLISH'}">
						$('#language').val('ENGLISH');
					</c:when>
					<c:when test="${param.lang=='CHINESE_SIMPLIFIED'}">
						$('#language').val('CHINESE_SIMPLIFIED');
					</c:when>
					<c:when test="${param.lang=='CHINESE_TRADITIONAL'}">
						$('#language').val('CHINESE_TRADITIONAL');
					</c:when>
					<c:when test="${param.lang=='CHINESE_SIMPLIFIED'}">
						$('#language').val('CHINESE_SIMPLIFIED');
					</c:when>
					<c:when test="${param.lang=='FRENCH'}">
						$('#language').val('FRENCH');
					</c:when>
					<c:when test="${param.lang=='ITALIAN'}">
						$('#language').val('ITALIAN');
					</c:when>
					<c:when test="${param.lang=='JAPANESE'}">
						$('#language').val('JAPANESE');
					</c:when>
					<c:when test="${param.lang=='KOREAN'}">
						$('#language').val('KOREAN');
					</c:when>
					<c:when test="${param.lang=='SPANISH'}">
						$('#language').val('SPANISH');
					</c:when>					
				</c:choose>
				
			}
		</script>
					
</page:apply-decorator>