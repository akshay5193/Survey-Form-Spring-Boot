<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="css/style.css" rel="stylesheet">
	<script type="text/javascript" src="js/myscript.js"></script>
	<meta charset="UTF-8">
	<title>Dojo Survey Index</title>
</head>
<body>
<div class = "container">

        <form action='/result' method='POST'>
            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" name='name' class="form-control" id="name" placeholder="Name">
                </div>
            </div>
            
            <div class="form-group row col-sm-12 mgl-20">
                <label for="location" class="col-sm-2 col-form-label pad0" style="padding: 0;">Dojo Location</label>
                <select name = "dojo" class="col-sm-10 custom-select">
                    <option selected>Open this select menu</option>
                    <option value="Burbank">Burbank</option>
                    <option value="OC">Orange County</option>
                    <option value="San Jose">San Jose</option>
                    <option value="San Jose">Seattle</option>
                </select>
            </div>
            
            <div class="form-group row col-sm-12 mgl-20">
                <label for="language" class="col-sm-2 col-form-label pad0" style="padding: 0;">Favorite Language</label>
                <select name = "language" class="col-sm-10 custom-select">
                    <option selected>Open this select menu</option>
                    <option value="JS">JS</option>
                    <option value="Python">Python</option>
                    <option value="Java">Java</option>
                </select>
            </div>
            
            <div class="input-group">
                <div class="input-group-prepend">
                    <h5 class="ilb">Comment (optional):</h5>
                    <textarea class="form-control" type = "text" name = "comment" aria-label="With textarea"></textarea>
                </div>
                <div class="form-group ilb">
                    <div class="col-md-10">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
                </div>
        </form>





</div>

</body>
</html>