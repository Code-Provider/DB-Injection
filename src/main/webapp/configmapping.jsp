<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mapping Configuration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Computime</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/dbconfig">BD Configuration</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link active" href="/configmapping">Mapping Configuration</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/injectionconf">Injection Configuration</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Injection
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/injectmysqlsqlserver">MySQL to SQLServer</a>
          <a class="dropdown-item" href="/injectsqlservermysql">SQLServer to MySQL</a>
          <a class="dropdown-item" href="/injectaccessmysql">Access to MySQL</a>         
          <a class="dropdown-item" href="/injectmysqlmysql2">MySQL to MySQL2</a>  
          
        </div>
      </li>
    </ul>
  </div>
</nav>
<div class = "container p-3">
<div class="card-group" style = "margin-top : 10% ;">
  <div class="card" style = "border: none;">
    <img class="card-img-top" src="https://i.imgur.com/9QRs7mn.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title text-center">Access and MySQL Mapping</h5>
      <p class="card-text"><div class="col-md-12 text-center"><a href = "/mysqlaccessmap" class = "btn btn-dark text-center">Map</a></div></p>
      <p class="card-text"><small class="text-muted"></small></p>
    </div>
  </div>
  <div class="card" style = "border: none;">
    <img class="card-img-top" src="https://i.imgur.com/fYeVs3a.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title text-center">Access and SQLServer Mapping</h5>
      <p class="card-text"><div class="col-md-12 text-center"><a href = "sqlserveraccessmap" class = "btn btn-dark text-center">Map</a></div></p>
      
    </div>
  </div>
  <div class="card" style = "border: none;">
    <img class="card-img-top" src="https://i.imgur.com/6ateL7Y.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title text-center">MySQL and SQLServer Mapping</h5>
      <p class="card-text"><div class="col-md-12 text-center"><a href = "mysqlsqlservermap" class = "btn btn-dark text-center">Map</a></div></p>
      
    </div>
  </div>
  
  <div class="card" style = "border: none;">
    <img class="card-img-top" src="https://i.imgur.com/VHkgBJ4.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title text-center">MySQL and MySQL Mapping</h5>
      <p class="card-text"><div class="col-md-12 text-center"><a href = "mysqlmysql2map" class = "btn btn-dark text-center">Map</a></div></p>
      
    </div>
  </div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>

