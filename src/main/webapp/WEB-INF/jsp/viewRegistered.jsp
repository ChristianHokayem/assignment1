<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en">

<header>
<table><tr><td>
<form action="/" method = "POST">
 <input type = "submit" name = "home" value = "Home"/>
</form>

</td>
<td>

<form action="viewRegistered" method = "POST">
  <input type = "submit" name = "viewRegistered" value = "View"/>
</form>

</td>
<td>

<form action="register" method = "POST">
  <input type = "submit" name = "register" value = "Register"/>
</form>
</td></tr></table>
</header>

<body>

<h1>Registered Users</h1>

<table>
     <tr>
       <th>ID</th>
       <th>First Name</th>
       <th>Last Name</th>
       <th>Age</th>
       <th>Registered On</th>
     </tr>

     <c:forEach items="${clients}" var="client">
      <tr>
         <td> ${client.id}</td>
         <td> ${client.fname}</td>
         <td> ${client.lname}</td>
         <td> ${client.age}</td>
         <td> ${client.create_time}</td>
      </tr>
    </c:forEach>
</table>
</body>

</html>