<%@ include file="./include.jsp"%>
<%
String id=request.getParameter("customer.id");
%>

<html>
<head>
   <title>Customer delete</title>
</head>
<body>

<h1>Please review the information and delete it </h1>

  <form:form name="deleteCustomerForm" action="./mvcdeletecustomer" method="POST" commandName="customer">
    <table>
  	<tr>
  	<td>Customer ID</td>
        <td>${customer.id}<form:input path="id" type="hidden" value="<%=id %>"/>
        </td>
    </tr>
  	<tr>
  	<td>Customer Name</td>
        <td>${customer.name}
        </td>
    </tr>
    <tr>
  	<td>Nik name</td>
        <td>${customer.nikName}
        </td>
    </tr>
    <tr>
    <td>Sex</td>
        <td>${customer.sex}
        </td>
	</tr>
    <tr> 
    <td>Birthday</td>
        <td>${customer.birthday}
        </td>
    </tr>
    <tr>
    <td>ID Card No.</td>
        <td>${customer.idCardNo}
        </td>
    </tr>
    <tr>
    <td>Tel No.</td>
        <td>${customer.telNo}
        </td>
    </tr>
    <tr>
    <td>WeChat ID</td>
        <td>${customer.weChatId}
        </td>
    </tr>
    <tr>
    <td>QQ ID</td>
        <td>${customer.qqId}
        </td>
    </tr>
    <tr>
    <td>Address</td>
        <td>${customer.address}
        </td>
    </tr>
    <tr>
    <td>Join Date</td>
        <td>${customer.joinDate}
        </td>
    </tr>
    <tr>
    <td>Rank</td>
        <td>${customer.rank}
        </td>
    </tr>
    <tr>
    <td>Recommender</td>
        <td>${customer.recommender}
        </td>
    </tr>
    <tr>
    <td>Reference</td>
        <td>${customer.reference}
        </td>
    </tr>
	<tr>
    <td><input type="submit" value="deleteBtn"> </td>
    </tr>
    </table>
  </form:form>
 
<br><br><h2>
<a href="${context}">Home</a>
</h2>
</body>
</html>
