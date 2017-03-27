<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Prog.kiev.ua</title>
</head>
<body>
<div align="center">
    <script type="text/javascript">
        var mess = "${message}";
        document.write("<br/>" + mess);
    </script>
</div>
<div align="center" class="form-select-button">
    <br/>
    <form action="/view" method="POST">
        Photo id: <input type="text" name="photo_id">
        <input type="submit" value="Load by Id"/>
    </form>
    <br/>

    <form action="/add_photo" enctype="multipart/form-data" method="POST">
        Photo: <input id="upload" type="file" name="photo"/>
        <br/>
        <input type="submit" value="Send to Gallery"/>
    </form>
    <br/>
    <form action="/photos">
        <input type="submit" value="Go to Gallery"/>
    </form>
</div>
</body>
</html>
