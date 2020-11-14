<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mapping Configuration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
  function handleClick()
  {
	var count = document.getElementById("gimmecount").value ; 
	var value = ""; 
	for (let i = 1 ; i< count; i++){
		console.log(i) ; 
		if (i == count -1 ){
			value += document.getElementById("th"+i).getAttribute("value") + "," + document.getElementById("td"+i).options[document.getElementById("td"+i).selectedIndex].value ;
		}
		else if (i < count-1){
			value += document.getElementById("th"+i).getAttribute("value") + "," + document.getElementById("td"+i).options[document.getElementById("td"+i).selectedIndex].value + ";";
		}
	}

	document.getElementById('tableTextId').value = value ; 
	
	
    console.log(value) ;
    //console.log(count) ; 
    //console.log(document.getElementById("th1").getAttribute("value")) ; 
    //console.log(document.getElementById("th1").innerText) ; 
    //console.log(document.getElementById("1").innerText);
    //console.log(document.getElementById("1").getAttribute("value"));
 }
  
</script>

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
<c:set var="count" value="1" scope="page" />
<div class = "container p-5">
<form method = "post" action = "sqlserveraccessmapfields">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">SQLServer tables</th>
      <th scope="col">Access tables</th>

    </tr>
  </thead>
  <tbody>
  <c:forEach var = "sqlservertable" items = "${sqlservertables}">
    <tr id = "${count}" value ="workplz">
    
      <th scope="row" id = "th${count}" value = "${sqlservertable}"><c:out value="${sqlservertable}"/></th>
      
      <td class = "tddd"><select class="custom-select" id = "td${count}">
      <option value = "No Mapping">No Mapping</option>
      <c:forEach var = "accesstable" items = "${accesstables}">
      <option value = "${accesstable}"><c:out value="${accesstable}"/></option>
      </c:forEach>
       
      </select></td>

    </tr>
    <c:set var="count" value="${count + 1}" scope="page"/>
    </c:forEach>
    
    </tbody>
    
    
    </table>
    <input type="hidden" name="tableValue" id="tableTextId" />  
      
    
    <input type="hidden" name="counto" id="gimmecount" value = "${count}"/>  
    <button class="btn btn-dark" style = "margin-left :48%" type="submit" onclick="handleClick();">Submit</button>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>