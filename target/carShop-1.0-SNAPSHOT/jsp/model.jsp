<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
</head>
<body>
<div class="model">
    <a href="/w?id=<jsp:getProperty name="adId" property="id"/>">
        <h4><jsp:getProperty name="adId" property="title"/></h4></a>
    <div class="model-photo"> <a href="/w?id=<jsp:getProperty name="adId" property="id"/>"> <img src="../img/<jsp:getProperty name="adId" property="foto1"/>" width="250px" height="200px"></a></div>
    <div class="model-description">
        <ul class="model-info-ul">
            <li class="model-info-li"><%=res.getString("yearIss")%>: <jsp:getProperty name="adId" property="year"/></li>
            <li class="model-info-li"><%=res.getString("mileage")%>: <jsp:getProperty name="adId" property="mileage"/> км</li>
            <li class="model-info-li"><%=res.getString("body")%>: <jsp:getProperty name="adId" property="carType"/></li>
            <li class="model-info-li"><%=res.getString("carColour")%>: <jsp:getProperty name="adId" property="colour"/></li>
        </ul>
    </div>
    <div class="model-buy-div">
        <p id="model-price"><jsp:getProperty name="adId" property="price"/> <%=res.getString("currency")%></p>
        <form action="/sb?lang=<%=lang%>&id=<jsp:getProperty name="adId" property="id"/>" method="POST">
            <input type="submit" class="new-buy-button" value="<%=res.getString("buyButton")%>">
        </form>
    </div>
</div>
</body>
</html>
