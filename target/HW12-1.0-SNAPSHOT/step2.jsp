<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Step 2</title>
    <%@include file="templates/bootstrap.jsp" %>
</head>
<body>
<div class="container mt-5">
    <h3 class="font-weight-bold">STEP 2</h3>
    <form method="post" action="/step2">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">City :</label>
            <div class="col-sm-3 form-group">
                <select class="form-control" name="city">
                    <option selected></option>
                    <%
                        String[] cities = { "Aktau", "Aktobe", "Almaty", "Arkalyk", "Atyrau", "Baikonur", "Balkhash", "Zhezkazgan", "Karagandy", "Kentau",
                                "Kyzylorda", "Kokshetau", "Kostanay", "Nur-Sultan", "Zhanaozen", "Pavlodar", "Petropavl", "Ridder", "Saran", "Satpayev",
                                "Semey", "Stepnogorsk", "Taldykorgan", "Taraz", "Temirtau", "Turkistan", "Oral", "Oskemen", "Shymkent", "Shakhtinsk",
                                "Schuchinsk", "Ekibastuz"
                        };

                        for (String city : cities) {
                    %>
                            <option><%=city%></option>
                    <%
                        }
                    %>
                </select>
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Address :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="address">
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Phone :</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="phone" minlength="12" maxlength="12" placeholder="+77012223344">
            </div>
        </div>
        <button class="btn btn-success">NEXT</button>
    </form>
</div>
</body>
</html>
