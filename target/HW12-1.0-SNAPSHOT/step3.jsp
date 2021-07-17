<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Step 3</title>
    <%@include file="templates/bootstrap.jsp"%>
</head>
<body>
<div class="container mt-5">
    <h3 class="font-weight-bold">STEP 3</h3>
    <form method="post" action="/step3">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">University :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="university">
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Faculty :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="faculty">
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Group :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="group">
            </div>
        </div>
        <button class="btn btn-success">FINISH</button>
    </form>
</div>
</body>
</html>
