<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>User Data</title>

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
<div style="margin: 30px 10%; width: 80%; min-width: 640px">

    <div class="row">
        <div class="col-md-8"><a href="<c:url value="/users"/>"><h1>Users MANAGER <em>v.1.0.1</em></h1></a></div>
        <div class="col-md-4">
            <form:form action="/searchresults" method="get" modelAttribute="user">
                <div class="input-group">
                    <input type="text" name="searchedName" id="searchedName" class="form-control"
                           placeholder="Enter User Name">
                    <span class="input-group-btn">
                        <input type="submit" class="btn btn-default" value="GO!">
                    </span>
                </div>
            </form:form>
        </div>
    </div>

<div class="panel panel-primary">
    <!-- Default panel contents -->

    <div class="panel-heading">
        <div class="row">
            <div class="col-md-2">List Users</div>
            <div class="col-md-10" style="text-align: right">Add User
                <a class="but" href="/adduser">
                    <button type="button" class="btn btn-default" aria-label="Left Align">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                    </button>
                </a>
            </div>
        </div>
    </div>
    <table class="table table-hover">
    <tr class="param">
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Admin</th>
        <th>Creation date</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <tr class="value">
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createDate}</td>
        <td>
            <a href="<c:url value='/edit/${user.id}'/>">
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                </button>
            </a>
        </td>
        <td>
            <a href="<c:url value='/remove/${user.id}'/>">
                <button type="button" class="btn btn-default" aria-label="Left Align">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                </button>
            </a>
        </td>
    </tr>
</table>
    <div class="panel-footer">
        <a href="<c:url value="/users"/>">Back to users list</a>
    </div>
</div>
</div>
</body>
</html>