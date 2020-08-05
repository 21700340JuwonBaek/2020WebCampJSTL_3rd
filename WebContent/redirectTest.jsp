<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <core:set var="url" value="2" scope="request"/>  
  <core:if test="${url<1}">  
     <core:redirect url="http://javatpoint.com"/>  
     </core:if>
  <core:if test="${url>1}">  
     <core:redirect url="http://facebook.com"/>  
</core:if>
</body>
</html>