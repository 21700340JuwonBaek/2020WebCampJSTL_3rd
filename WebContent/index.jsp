<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>

<core:out value="JSTL개신기개신기"></core:out><br>

<!--
<core:import url="test.jsp"/>  

<core:import var="data" url="test.jsp"/>  
<core:out value="${data}"/>    -->




<core:set var="Income" scope="session" value="${4000*4}"/>  
<core:out value="${Income}"/>  <br>
<core:remove var="Income"/>
<core:out value="${Income}"/>  <br><!-- 위에서 remove 되었으므로 출력되지 않는다. -->



<core:catch var="Exception">
<%int x = 2/0; %>
<%=x %>

</core:catch><!-- 말이 catch이지...거의 try나 다를 바가 없어보인다. -->

<core:if test="${Exception != null }"> <!-- if 메소드를 쓸 때에는 항상 test라는 것을 쓰는 듯 하다. 변수선언할 때에 var을 쓰듯이. -->
<p>예외타입은 ${Exception} 입니다.<br>
예외타입 메시지 : ${Exception.message }
</p>
</core:if>

<% int y = 10; %><!-- 이 때에 y가 choose내부에서 걸리지 않는 이유는 뭐때문...? -->

<core:set var="y" scope="session" value="${10}"/>  

<core:choose>
<core:when test="${y>5 }">
y는 5보다 큽니다.<br>
</core:when>

<core:when test="${y>8 }">
y는 8보다 큽니다.
</core:when>

    <core:otherwise>  
    y는 5보다 작습니다.
    </core:otherwise>  

</core:choose>
<!-- 테스트 결과 y가 5보다 크다는 것만 출력이 됩니다.-->
<!--(아마 제일 첫 번째로 걸리는 조건의 명령만 실행하는 듯)choose가 switch, when은 case, otherwise는 default라고 생각하면 될 듯합니다.-->


<core:forEach var="j" begin="1" end="3">  
   Item <core:out value="${j}"/><p>  
</core:forEach>  

<!-- 반복해서 출력하기...! -->
<core:forTokens items="BAEK-JU-WON" delims="-" var="name">
<core:out value="${name }"/><p>
</core:forTokens>
<!-- delims에서 설정한 문자로 items를 끊어서 반복하는 느낌. 오케이 아이 갓잇. -->

<core:url value="/index1.jsp" var="completeURL">  
 <core:param name="trackingId" value="786"/>  
 <core:param name="user" value="Nakul"/>  
</core:url>  

${completeURL}  <br>
<!-- 꼬롬하다... 이거 한번 TA님한테 여쭤봐야 할 듯 싶다...jsp파일을 만들었다는 건가...? -->

<core:url value="/RegisterDao.jsp"/>  

</body>
</html>