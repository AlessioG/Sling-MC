<%@page language="java" session="false" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.3" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="q" uri="http://sling.apache.org/taglibs/q/1.0"%>
<sling:defineObjects/>
<!DOCTYPE html>
<html>
    <head>
        <title>Search results</title>
    </head>
    <body>

    <form method="GET" action=".results.html">
        Xpath: <input type="text" value="${param.q}" name="q" size="70"/>
        <input type="submit" value="Search again"/>
    </form>

    <h3>These are your search results for ${param.q}</h3>
    <q:xpathQuery query="${param.q}" var="res"/>
    <ul>
        <c:forEach items="${res}" var="item">
            <li>${item.path}</li>
        </c:forEach>
    </ul>
    </body>
</html>