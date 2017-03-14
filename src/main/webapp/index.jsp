<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users Manager JR (CRUD)</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
        h1 {
            font-size: 30px;
            margin: 0;
            color: #444;
        }
        a h1 {
            color: #444;
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div style="margin: 100px auto; width: 420px; text-align: center">
    <div class="panel panel-primary">
        <div class="panel-body" style="padding: 50px 0">
            <h1>Users MANAGER <em>v.1.0.1</em></h1><br><br>
            <a href="<c:url value="/users"/>">
                <button type="button" class="btn btn-primary btn-lg">Go to User List</button>
            </a>
        </div>
    </div>
</div>
</body>
</html>