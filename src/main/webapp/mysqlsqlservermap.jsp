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
	//mysqltable,sqlservertable:mysqlfield1;sqlserverfield1-mysqlfield2;sqlserverfield2   / mysqltable2,
	var count = document.getElementById("gimmecount").value ; 
	var value = "" ; 

	for (let i = 1 ; i< count ; i++)  {
		value += document.getElementById("table"+i).getAttribute("value") + ":" ;
		let co = document.getElementById("gimmeco"+i).value ; 
		for(let j = 1 ; j< co ; j++){
				if (j == co -1) {
					if (i == count -1){
						if (document.getElementById(i+"td"+j).options[document.getElementById(i+"td"+j).selectedIndex].value != "No Mapping"){
							value+= document.getElementById(i+"th"+j).getAttribute("value") + ";" + document.getElementById(i+"td"+j).options[document.getElementById(i+"td"+j).selectedIndex].value ;
						}
						
					}else {
						if (document.getElementById(i+"td"+j).options[document.getElementById(i+"td"+j).selectedIndex].value != "No Mapping"){
							value+= document.getElementById(i+"th"+j).getAttribute("value") + ";" + document.getElementById(i+"td"+j).options[document.getElementById(i+"td"+j).selectedIndex].value + "/";
						}else {
							value+="/" ; 
							}
						
					}
						
				}
				else {
					if (document.getElementById(i+"td"+j).options[document.getElementById(i+"td"+j).selectedIndex].value != "No Mapping"){
						value+= document.getElementById(i+"th"+j).getAttribute("value") + ";" + document.getElementById(i+"td"+j).options[document.getElementById(i+"td"+j).selectedIndex].value + "-" ;
					}
				}
			}
		
		if (value.charAt(value.length-1) == "-" && i == count-1){ 
			value = value.substring(0, value.length - 1);
		}
		

		else if (value.charAt(value.length-2) == "-"){
			value = value.substring(0, value.length-2) + "/" ; 
			}
		
		 
		
		}


		console.log(value) ; 

		document.getElementById('tableTextId').value = value ; 

	
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


<form method = "post" action = "savemapping">

<c:set var="count" value="1" scope="page" />

<c:forEach items = "${map}" var = "table">





<table class="table" value = "${table.mysqltable}*${table.sqlservertable}" id = "table${count}">


  <thead class="thead-dark">
    <tr>
    
      <th scope="col">MySQL : ${table.mysqltable}</th>
      <th scope="col">SQLServer : ${table.sqlservertable}</th>

    </tr>
  </thead>
  <tbody>
  <c:set var="co" value="1" scope="page" />
  <c:forEach var = "mysqlfield" items = "${table.mysqlfields}">
  	 <tr id = "mysqlfield${co}">
  	 
  	 <th scope="row" value = "${mysqlfield}" id = "${count}th${co}"><c:out value="${mysqlfield}"/></th>
  	 
  	 
  	 
  	 <td><select class="custom-select" id = "${count}td${co}">
  	 <option value = "No Mapping">No Mapping</option>
  	 <c:forEach var = "sqlserverfield" items = "${table.sqlserverfields}">
     <option value = "${sqlserverfield}"><c:out value="${sqlserverfield}"/></option>
     </c:forEach>
  	 
  	 
  	 </td>
  	 
  	 </tr>
  	 <c:set var="co" value="${co + 1}" scope="page"/>
	</c:forEach>
	<input type="hidden" id="gimmeco${count}" value = "${co}"/>  
	
	
	</tbody>
	
	</table>
	
	
<c:set var="count" value="${count + 1}" scope="page"/>


</c:forEach>

<input type="hidden" name="save" id="tableTextId" />  
    
<input type="hidden" name="counto" id="gimmecount" value = "${count}"/>

<input type="hidden" name="type" id="typee" value = "mysqlsqlserver"/>

<c:if test="${not empty map}">
<button class="btn btn-dark" type = "submit" style = "margin-left :48%" onclick="handleClick();">Submit</button>
</c:if>
<c:if test="${empty map}">
    <h6>No mapping to be done...</h6>
</c:if>
</form>




</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>