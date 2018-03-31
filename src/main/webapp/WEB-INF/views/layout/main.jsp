<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
           uri="http://java.sun.com/jsp/jstl/fmt" %>
           
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<c:if test="${pageDescription}">
		<meta name="description" content="${pageDescription}">
	</c:if>
	<c:if test="${pageKeywords}">
		<meta name="keywords" content="${pageKeywords}">
	</c:if>
	    
	<title><decorator:title default='ZDP Open Ledger' /></title>

	<jsp:include page="icon.jsp" />
	
	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
	
	<!--[if lte IE 8]>
	    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/grids-responsive-old-ie-min.css">
	<![endif]-->
	<!--[if gt IE 8]><!-->
	    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/grids-responsive-min.css">
	<!--<![endif]-->	
		
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	
	<link rel="stylesheet" href="<c:url value='/static/main/css/main.css'/>">
		
	<link rel="stylesheet" href="<c:url value='/static/font-awesome-4.7.0/css/font-awesome.min.css'/>">
	
  </head>
  
  <body>
  
  	<jsp:include page="../common/ga.jsp" />
  	
	<div id="particles-js"></div>
	
	<div id="container">

		<div class="pure-menu pure-menu-horizontal pure-menu-scrollable">
		    <span class="pure-menu-heading"> <img src="<c:url value='/static/images/logo-white.png'/>" /> 
		    </span>
		    <ul class="pure-menu-list">
		    	<li class="pure-menu-item"><a href="<c:url value='/index.html'/>" class="pure-menu-link">Home</a></li>
		        <li class="pure-menu-item"><a href="<c:url value='/transfer.html'/>" class="pure-menu-link">Make a transfer</a></li>
		        <li class="pure-menu-item"><a href="<c:url value='/wallet/index.html'/>" class="pure-menu-link">Create new wallet</a></li>
		        <li class="pure-menu-item"><a href="<c:url value='/wallet/generate.html'/>" class="pure-menu-link">Generate an address</a></li>
		        <li class="pure-menu-item"><a href="<c:url value='/wallet/balance.html'/>" class="pure-menu-link">Check balance</a></li>
		    </ul>
		</div>
		
		<br>
		
		<decorator:body />
		
	</div>
	
	<div id="footer">
		&copy; 2017-2018 ZDP Team
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<script src="<c:url value='/static/main/js/main.js'/>"></script>
	
	<script src="<c:url value='/static/main/js/particles.min.js'/>"></script>

	<script>
	
		$(function() {

			particlesJS.load('particles-js', '<c:url value="/static/main/config/particlesjs-config.json"/>', function() {
			  console.log('callback - particles.js config loaded');
			});
			
			if (typeof init !== "undefined") {
				init();
			}
			
		});	
	</script>
	
  </body>
</html>