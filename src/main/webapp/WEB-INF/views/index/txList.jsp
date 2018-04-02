<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	.tx-label {
		font-size:12px;
		text-align: left;
	}
	.tx-value {
		text-align: left;
	}
	.tx-list-cell {
		z-index: 100 !important;
		position: relative;
	}
</style>

<c:forEach items="${txList.transactions}" var="tx">
	<div style='background:#000;padding:10px;margin-bottom:10px;' class="tx-list-cell">
		<div class="pure-g">
		    <div class="pure-u-1 pure-u-md-1-2 tx-label">Date:</div>
		    <div class="pure-u-1 pure-u-md-1-2 tx-label">Amount:</div>
		    <div class="pure-u-1 pure-u-md-1-2 tx-value">
		    	<fmt:formatDate value="${tx.date }" pattern="dd MMM yyyy hh:mm a" />
		    </div>
		    <div class="pure-u-1 pure-u-md-1-2 tx-value">${tx.amount }</div>
		</div>
		<div style='padding:10px;'>
			<a style="color:rgb(255, 168, 0)" href="<c:url value='/search.html?q=${tx.uuid}'/>">${tx.uuid}</a>
		</div>
	</div>
</c:forEach>
