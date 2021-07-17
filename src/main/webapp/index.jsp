<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Information</title>
    <%@include file="templates/bootstrap.jsp"%>
</head>
<body>
    <div class="container mt-5">
        <%
            String name = (String) session.getAttribute("name");
            String surname = (String) session.getAttribute("surname");
            Integer age = (Integer) session.getAttribute("age");
            String city = (String) session.getAttribute("city");
            String address = (String) session.getAttribute("address");
            String phone = (String) session.getAttribute("phone");
            String university = (String) session.getAttribute("university");
            String faculty = (String) session.getAttribute("faculty");
            String group = (String) session.getAttribute("group");
        %>
        <p>Name: <b><%=name%></b><br />
            Surname: <b><%=surname%></b><br />
            Age: <b><%=age%></b><br />
            City: <b><%=city%></b><br />
            Address: <b><%=address%></b><br />
            Phone: <b><%=phone%></b><br />
            University: <b><%=university%></b><br />
            Faculty: <b><%=faculty%></b><br />
            Group: <b><%=group%></b>
        </p>
    </div>
</body>
</html>
