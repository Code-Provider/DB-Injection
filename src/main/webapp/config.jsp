<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>DB Configuration</title>
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
      <li class="nav-item active">
        <a class="nav-link" href="/dbconfig">BD Configuration</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/configmapping">Mapping Configuration</a>
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
          <a class="dropdown-item" href="/injectmysql2mysql">MySQL2 to MySQL</a>       
          
        </div>
      </li>
    </ul>
  </div>
</nav>
<div class = "container p-5">

<form method = "post" action = "DatabaseConfig">
<h2 style ="text-align: center;">Access</h2>

  <div class="form-group">
    <label for="exampleInputAccess1">Base de données Access</label>
    <input type="text" class="form-control" id="exampleInputAccess1" aria-describedby="AccessHelp" placeholder="Enter Access Database path" name = "accesspath" value = "${defaultaccesspath}">
    <small id="AccessHelp" class="form-text text-muted">Exemple : "C:\Users\LENOVO\Desktop\Database11.accdb"</small>
  </div>
  <h2 style ="text-align: center;">MySQL</h2>
  
  <div class = "form-row">
 
    <div class="form-group col-md-4">
        <label for="name" class="control-label">Host</label>
        <input type="text" value='${mysqldefaulthost}' name = "mysqlhost" placeholder = "Host" class="form-control" id="lineHeight">
    </div>
    
    <div class="form-group col-md-4">
        <label for="name" class="control-label">Port</label>
        <input type="number" value='${mysqldefaultport}' name = "mysqlport" placeholder = "Port" class="form-control" id="paddingBottom">
    </div>
    
    <div class="form-group col-md-4">
        <label for="name" class="control-label">DB Name</label>
        <input type="text" value='${mysqldefaultdb}' placeholder = "db" name = "mysqldb" class="form-control" id="paddingTop" />
    </div>
    
    </div>
    
    <div class = "form-row">
    <div class="form-group col-md">
        <label for="name" class="control-label">DB 2 Name</label>
        <input type="text" value='${mysqldefaultdb2}' placeholder = "db2" name = "mysqldb2" class="form-control" id="paddingTop" />
    </div>
    <div class="form-group col-md">
        <label for="name" class="control-label">MySQL Username</label>
        <input type="text" class="form-control" id="lineHeight" placeholder="Username" name = "mysqlusername" value = "${mysqldefaultusername}">
    </div>
    <div class="form-group col-md">
        <label for="name" class="control-label">MySQL Password</label>
        <input type="password" class="form-control" id="paddingTop" placeholder="Password" name = "mysqlpassword" value = "${mysqldefaultpassword}"/>
    </div>
    
    </div>

    
    <h2 style ="text-align: center;">SQLServer</h2>
  <div class = "form-row">
 
    <div class="form-group col-md-4">
        <label for="name" class="control-label">Host</label>
        <input type="text" value='${sqlserverdefaulthost}' name = "sqlserverhost" placeholder = "Host" class="form-control" id="lineHeight">
    </div>
    
    <div class="form-group col-md-4">
        <label for="name" class="control-label">Port</label>
        <input type="number" value='${sqlserverdefaultport}' name = "sqlserverport" placeholder = "Port" class="form-control" id="paddingBottom">
    </div>
    
    <div class="form-group col-md-4">
        <label for="name" class="control-label">DB Name</label>
        <input type="text" value='${sqlserverdefaultdb}' placeholder = "db" name = "sqlserverdb" class="form-control" id="paddingTop" />
    </div>
    
    </div>
    
    <div class = "form-row">
    <div class="form-group col-md">
        <label for="name" class="control-label">DB 2 Name</label>
        <input type="text" value='${sqlserverdefaultdb2}' placeholder = "db2" name = "sqlserverdb2" class="form-control" id="paddingTop" />
    </div>
    <div class="form-group col-md">
        <label for="name" class="control-label">SQLServer Username</label>
        <input type="text" class="form-control" id="lineHeight" placeholder="Username" name = "sqlserverusername" value = "${sqlserverdefaultusername}">
    </div>
    <div class="form-group col-md">
        <label for="name" class="control-label">SQLServer Password</label>
        <input type="password" class="form-control" id="paddingTop" placeholder="Password" name = "sqlserverpassword" value = "${sqlserverdefaultpassword}"/>
    </div>
    
    </div>
    
    <div class="col-md-12 text-center">
    <button type="submit" class="btn btn-dark">Submit</button>
    </div>
</form>



<h2></h2>


</div>

</body>
</html>