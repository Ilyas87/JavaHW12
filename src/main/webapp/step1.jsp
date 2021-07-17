<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Step 1</title>
    <%@include file="templates/bootstrap.jsp"%>
</head>
<body>
<div class="container mt-5">
    <h3 class="font-weight-bold">STEP 1</h3>
    <form method="post" action="/step1">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Name :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="name">
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Surname :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="surname">
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Age :</label>
            <div class="col-sm-3">
                <select class="form-control" style="display: inline-block" name="age">
                    <option selected></option>
                    <%
                        for (int i = 0; i <= 100; i++) {
                    %>
                    <option><%=i%></option>
                    <%
                        }
                    %>
                </select>
            </div>

<%--            <div class="col-sm-3">--%>
<%--                <input type="number" class="form-control" name="age" min="0" max="100">--%>
<%--            </div>--%>
        </div>
        <button class="btn btn-success">NEXT</button>
    </form>
</div>
</body>
</html>
