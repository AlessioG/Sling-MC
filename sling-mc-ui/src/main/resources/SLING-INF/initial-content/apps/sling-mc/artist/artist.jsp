<%@page language="java" session="false" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.3" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<sling:defineObjects/>
<!DOCTYPE html>
<sling:adaptTo adaptable="${resource}" adaptTo="org.apache.sling.api.resource.ValueMap" var="vmap"/>
<sling:getProperty properties="${vmap}" key="name" var="resourceName"/>
<html>
    <head>
        <title>${resourceName}</title>
    </head>
<body>
    <h3>${resourceName}</h3>
     Here's a list of albums by this artist:
     <sling:listChildren resource="${resource}" var="children"/>
     <ul>
        <c:forEach items="${children}" var="kid">
            <sling:adaptTo adaptable="${kid}" adaptTo="org.apache.sling.api.resource.ValueMap" var="vmap"/>
            <sling:getProperty properties="${vmap}" key="name" var="name"/>
            <li>
                <a href="${kid.path}.html"><c:out value="${name}"/></a>
            </li>
        </c:forEach>
     </ul>
    </body>
</html>