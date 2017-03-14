<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Add User</title>
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

        .form-group {
            margin: 15px 20px;
        }

        .checkbox, .radio {
            display: block;
            margin: 15px 20px;
            position: relative;
        }

        .btn-default {
            background-color: #fff;
            border-color: #ccc;
            color: #333;
            margin-left: 20px;
        }

        label.admin {
            padding-left: 0;
        }
    </style>

</head>
<body>
<c:url var="addAction" value="/users/add"/>
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
    <form:form action="${addAction}" commandName="user">
    </form:form>
    <div style="margin: 30px auto; width: 360px;">
        <div class="panel panel-primary">
            <!-- Default panel contents -->
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-6">Add User</div>
                    <div class="col-md-6" style="text-align: right">
                        <a style="color: #ffffff; text-decoration: underline" href="<c:url value="/users"/>">Back to
                            User
                            List</a>
                    </div>
                </div>
            </div>
            <form:form action="${addAction}" commandName="user">
                <div class="form-group">
                    <form:label path="name"><spring:message text="Username"/></form:label>
                    <form:input class="form-control" placeholder="Name" path="name"/>
                </div>
                <div class="form-group">
                    <form:label path="age"><spring:message text="Age"/></form:label>
                    <form:input class="form-control" placeholder="Age" path="age"/>
                </div>
                <div class="checkbox">
                    <label>
                        <form:checkbox path="admin" value="false"/>
                        <form:label path="admin" class="admin"><spring:message text="Admin"/></form:label>
                    </label>
                </div>
                <input type="submit" class="btn btn-default" value="<spring:message text="Add User"/>"/>
            </form:form>

        </div>
    </div>
</div>
</body>
</html>