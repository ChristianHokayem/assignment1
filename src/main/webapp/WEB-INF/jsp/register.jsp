<!DOCTYPE HTML>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<h1>Registration Page</h1>
<h2>${prompt}</h2>
<form:form method="POST" action="newClient" modelAttribute="client">
     <table>
        <tr>
            <td><form:label path="fname">First Name</form:label></td>
            <td><form:input path="fname"/></td>
        </tr>
        <tr>
            <td><form:label path="lname">Last Name</form:label></td>
            <td><form:input path="lname"/></td>
        </tr>
            <tr>
                <td><form:label path="age">Age</form:label></td>
                <td><form:input path="age"/></td>
            </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>

</body>

</html>