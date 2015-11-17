<%@ include file="./include.jsp"%>

<html>
<head>
   <title>Customer search for delete</title>
</head>
<body>
  <h1>Customer search for delete</h1>
  <form action="./mvccustomer4Delete" method="GET">
  <table>
  	<tr>
  	<td>Customer ID:</td>
        <td><input name="custId"/>
        </td>
    </tr>
	<tr>
    <td><input type="submit" value="searchBtn"> </td>
    </tr>
    </table>
  </form>
 
<br><br><h2>
<a href="${context}">Home</a>
</h2>
</body>
  