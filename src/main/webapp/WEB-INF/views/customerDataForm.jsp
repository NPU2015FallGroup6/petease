<%@ include file="./include.jsp"%>
<html>
<head>
	<title>New Student Information</title>
	<style>
		.error {
		    font-size: 0.8em;
			color: #ff0000;
		}
	</style>
</head>
<body>

<h1>Please enter customer information</h1>

  <form:form action="./mvccustomer" method="POST" commandName="customer">
  <table>
  	<tr>
  	<td>Customer Name</td>
        <td><form:input path="name"/>
            <form:errors path="name" cssClass="error"/>
        </td>
    </tr>
    <tr>
  	<td>Nik name</td>
        <td><form:input path="nikName"/>
            <form:errors path="nikName" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Sex</td>
    <td><form:radiobutton path="sex" value="M1" checked="true"/> Male<br>
	<form:radiobutton path="sex" value="F1"/> Female<br></td>
	</tr>
    <tr>
    <td>Birthday</td>
        <td><form:input path="birthday" />
            <form:errors path="birthday" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>ID Card No.</td>
        <td><form:input path="idCardNo" />
            <form:errors path="idCardNo" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Tel No.</td>
        <td><form:input path="telNo" />
            <form:errors path="telNo" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>WeChat ID</td>
        <td><form:input path="weChatId" />
            <form:errors path="weChatId" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>QQ ID</td>
        <td><form:input path="qqId" />
            <form:errors path="qqId" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Address</td>
        <td><form:input path="address" />
            <form:errors path="address" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Join Date</td>
        <td><form:input path="joinDate" />
            <form:errors path="joinDate" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Rank</td>
        <td><form:select path="rank">
            <form:option value="A1"/>
            <form:option value="B1"/>
            <form:option value="C1"/>
            <form:option value="D1"/>
            </form:select>
        </td>
    </tr>
    <tr>
    <td>Recommender</td>
        <td><form:input path="recommender" />
            <form:errors path="recommender" cssClass="error"/>
        </td>
    </tr>
    <tr>
    <td>Reference</td>
        <td><form:select path="reference">
            <form:option value="FD"/>
            <form:option value="RV"/>
            </form:select>
        </td>
    </tr>
	<tr>
    <td><input type="submit" value="enterBtn"> </td>
    </tr>
    </table>
  </form:form>
 
<br><br><h2>
<a href="${context}">Home</a>
</h2>
</body>
</html>
