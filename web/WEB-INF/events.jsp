<%@ page import="model.Event" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: PASH
  Date: 02.09.2022
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Events</title>
</head>
<body>
<%

    List<Event> events = (List<Event>) request.getAttribute("events");

%>

<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>place</th>
        <th>isOnline</th>
        <th>eventType</th>
        <th>pricee</th>
    </tr>
    <% for (Event event : events) {
    %>
    <tr><%=event.getId()%>
    </tr>
    <tr><%=event.getName()%>
    </tr>
    <tr><%=event.getPlace()%>
    </tr>
    <tr><%=event.isOnline()%>
    </tr>
    <tr><%=event.getEventType().name()%>
    </tr>
    <tr><%=event.getPrice()%>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
