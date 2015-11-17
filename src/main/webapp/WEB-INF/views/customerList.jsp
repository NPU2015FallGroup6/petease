<%@ include file="./include.jsp"%>

<html>
<head>
   <title>Customer record</title>
</head>
<body>
  <h1>Customer record</h1>
  <table border=1>
	<tr>
		<th><b>ID</b></th>
		<th><b>Name</b></th>
		<th><b>Nik Name</b></th>
		<th><b>Sex</b></th>
		<th><b>Birthda</b>y</th>
		<th><b>ID Card No.</b></th>
		<th><b>Tel No.</b></th>
		<th><b>WeChat ID</b></th>
		<th><b>QQ ID</b></th>
		<th><b>Address</b></th>
		<th><b>Join Date</b></th>
		<th><b>Rank</b></th>
		<th><b>Recommender</b></th>
		<th><b>Reference</b></th>
	</tr>
	<c:forEach var="curCustomer" items="${customerList}">
		<tr>
		   <td>${curCustomer.id}</td>
		   <td>${curCustomer.name}</td>
		   <td>${curCustomer.nikName}</td>
		   <td>${curCustomer.sex}</td>
		   <td>${curCustomer.birthday}</td>
		   <td>${curCustomer.idCardNo}</td>
		   <td>${curCustomer.telNo}</td>
		   <td>${curCustomer.weChatId}</td>
		   <td>${curCustomer.qqId}</td>
		   <td>${curCustomer.address}</td>
		   <td>${curCustomer.joinDate}</td>
		   <td>${curCustomer.rank}</td>
		   <td>${curCustomer.recommender}</td>
		   <td>${curCustomer.reference}</td>
		</tr>
	</c:forEach>
</table>

<br><br><h2>
<a href="${context}">Home</a>
</h2>
</body>
</html>