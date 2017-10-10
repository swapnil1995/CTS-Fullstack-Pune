<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<%
response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
%>
<c:if test="${sessionScope.user eq null }">
<jsp:forward page="login.jsp?msg=Illegal Access. Login Again"/>
</c:if>
<h1 align="center">Products from database</h1> <hr/>
<jsp:include page="/menu.jsp"/>
<br>

<table border="1" align="center">

	<tr bgcolor="skyblue">
		<th>Sno</th>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>Price</th>
	</tr>


	<c:forEach varStatus="pc" items="${products}" var="prod">
	
		<tr>
			<td>${pc.count}</td>
			<td> ${prod.prodId}</td>
			<td> ${prod.prodName}</td>
			<td> ${prod.price}</td>
		</tr>
	
	</c:forEach>


</table>