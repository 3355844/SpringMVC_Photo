<%--
  Created by IntelliJ IDEA.
  User: 33558
  Date: 09.03.2017
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
    <title>Photos</title>
</head>
<body>
<h1>Here all photos in Gallery </h1>
<div>
    <form action="/delete_photos" method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Photo id</th>
                <th>look photo</th>
                <th>choose to Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${photos_ids}" var="photo_id">
                <tr>
                    <td>${photo_id}</td>
                    <td><img height="50" src="/photo/${photo_id}"/></td>
                    <td><input type="checkbox" name="deletePhotosId[]" value="${photo_id}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <br/>
        <input type="submit" value="Delete Selected">
    </form>
    <form action="/" class="form-select-button">
        <input type="submit" value="Back to Main page"/>
    </form>
</div>
</body>
</html>
