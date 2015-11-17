<%@ include file="./include.jsp"%>
<%
String id=request.getParameter("customer.id");
String name=request.getParameter("customer.name");
String nikName=request.getParameter("customer.nikName");
//String sex=request.getParameter("customer.sex");
String birthday=request.getParameter("customer.birthday");
String idCardNo=request.getParameter("customer.idCardNo");
String telNo=request.getParameter("customer.telNo");
String weChatId=request.getParameter("customer.weChatId");
String qqId=request.getParameter("customer.qqId");
String address=request.getParameter("customer.address");
String joinDate=request.getParameter("customer.joinDate");
//String rank=request.getParameter("customer.rank");
String recommender=request.getParameter("customer.recommender");
//String reference=request.getParameter("customer.reference");
%>
<c:set var="sex" scope="session" value="${customer.sex}"/>
<c:set var="rank" scope="session" value="${customer.rank}"/>
<c:set var="reference" scope="session" value="${customer.reference}"/>

<html>
<head>
   <title>Customer edit</title>
</head>
<body>

<h1>Please review the information and update it </h1>

  <form:form name="editCustomerForm" action="../mvcupdatecustomer" method="POST" commandName="customer">
    <table>
  	<tr>
  	<td>Customer ID</td>
        <td><form:input path="id" value="<%=id%>" readonly="true"/>
        </td>
    </tr>
  	<tr>
  	<td>Customer Name</td>
        <td><form:input path="name" value="<%=name%>"/>
            <form:errors path="name" cssClass="error"/>
        </td>
    </tr>
    <tr>
  	<td>Nik name</td>
        <td><form:input path="nikName" value="<%=nikName%>"/>
            <form:errors path="nikName" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Sex</td>
    <c:if test="${sex=='M1'}">
    <td><form:radiobutton path="sex" value="M1" checked="true"/> Male<br>
	<form:radiobutton path="sex" value="F1"/> Female<br></td>
	</c:if>
    <c:if test="${sex=='F1'}">
    <td><form:radiobutton path="sex" value="M1"/> Male<br>
	<form:radiobutton path="sex" value="F1" checked="true"/> Female<br></td>
	</c:if>
	</tr>
    <tr>
    <td>Birthday</td>
        <td><form:input path="birthday"  value="<%=birthday%>"/>
            <form:errors path="birthday" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>ID Card No.</td>
        <td><form:input path="idCardNo"  value="<%=idCardNo%>"/>
            <form:errors path="idCardNo" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Tel No.</td>
        <td><form:input path="telNo"  value="<%=telNo%>"/>
            <form:errors path="telNo" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>WeChat ID</td>
        <td><form:input path="weChatId"  value="<%=weChatId%>"/>
            <form:errors path="weChatId" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>QQ ID</td>
        <td><form:input path="qqId"  value="<%=qqId%>"/>
            <form:errors path="qqId" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Address</td>
        <td><form:input path="address"  value="<%=address%>"/>
            <form:errors path="address" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Join Date</td>
        <td><form:input path="joinDate"  value="<%=joinDate%>"/>
            <form:errors path="joinDate" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Rank</td>
        <td>
       <form:select path="rank">
    <c:choose>
    <c:when test="${rank=='A1'}">
            <form:option value="A1" selected="true"/>
            <form:option value="B1"/>
            <form:option value="C1"/>
            <form:option value="D1"/>
    </c:when>
    <c:when test="${rank=='B1'}">
            <form:option value="A1" />
            <form:option value="B1" selected="true"/>
            <form:option value="C1"/>
            <form:option value="D1"/>
    </c:when>
    <c:when test="${rank=='C1'}">
            <form:option value="A1" />
            <form:option value="B1"/>
            <form:option value="C1" selected="true"/>
            <form:option value="D1"/>
    </c:when>
    <c:when test="${rank=='D1'}">
            <form:option value="A1"/>
            <form:option value="B1"/>
            <form:option value="C1"/>
            <form:option value="D1" selected="true"/>
    </c:when>
    </c:choose>
            </form:select>
        </td>
    </tr>
    <tr>
    <td>Recommender</td>
        <td><form:input path="recommender"  value="<%=recommender%>"/>
            <form:errors path="recommender" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Reference</td>
        <td><form:select path="reference">
    <c:choose>
    <c:when test="${reference=='FD'}">
            <form:option value="FD" selected="true"/>
            <form:option value="RV"/>
    </c:when>
    <c:when test="${reference=='RV'}">
            <form:option value="FD"/>
            <form:option value="RV" selected="true"/>
    </c:when>
    </c:choose>
            </form:select>
        </td>
    </tr>
	<tr>
    <td><input type="submit" value="updateBtn"> </td>
    </tr>
    </table>
  </form:form>
 
<br><br><h2>
<a href="${context}">Home</a>
</h2>
</body>
</html>
