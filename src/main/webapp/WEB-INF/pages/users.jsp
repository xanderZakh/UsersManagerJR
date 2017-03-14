<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Users page</title>
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
                <div class="col-md-10" style="text-align: right">
                    <a class="but" href="/adduser">
                        <button type="button" class="btn btn-default" aria-label="Left Align">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                        </button>
                    </a>
                    Add User
                </div>
            </div>
        </div>
        <table class="table table-hover">
            <c:if test="${!empty listUsers}">
                <tr class="param">
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Admin</th>
                    <th>Creation date</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </c:if>
            <c:forEach items="${listUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td><a href="/userdata/${user.id}">${user.name}</a></td>
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
            </c:forEach>
        </table>
        <div class="panel-footer">
            <c:if test="${!empty listUsers}">
                <nav aria-label="Page navigation" style="text-align:center">
                    <ul class="pagination">
                        <li>
                            <c:url value="/users" var="prev">
                                <c:param name="page" value="${page-1}"/>
                            </c:url>
                            <c:if test="${page > 1}">
                                <a href="<c:out value="${prev}" />" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </c:if>
                            <c:if test="${page <= 1}">
                                <span aria-hidden="true">&laquo;</span>
                            </c:if>
                        </li>

                        <c:forEach begin="1" end="${amountPages}" step="1" varStatus="i">
                            <c:choose>
                                <c:when test="${page == i.index}">
                                    <li class="active"><a href="#">${i.index}<span class="sr-only">${i.index}</span></a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <c:url value="/users" var="url">
                                        <c:param name="page" value="${i.index}"/>
                                    </c:url>
                                    <li><a href='<c:out value="${url}" />'>${i.index}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <li>
                            <c:url value="/users" var="next">
                                <c:param name="page" value="${page + 1}"/>
                            </c:url>
                            <c:if test="${page + 1 <= amountPages}">
                                <a href="<c:out value="${next}" />" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </c:if>
                            <c:if test="${page == amountPages}">
                                <span aria-hidden="true">&raquo;</span>
                            </c:if>
                        </li>
                    </ul>
                </nav>
            </c:if>
            <c:if test="${empty listUsers}">
                <div style="text-align: center">
                    User List is Empty.<br>Please add new users.<br><a class="but" href="/adduser">+ Add User</a><br>
                </div>
            </c:if>
        </div>
    </div>
</div>

</body>
</html>
