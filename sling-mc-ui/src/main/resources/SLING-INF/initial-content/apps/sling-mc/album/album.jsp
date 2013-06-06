<%@page language="java" session="false" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.3" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="q" uri="http://sling.apache.org/taglibs/q/1.0"%>
<sling:defineObjects/>
<!DOCTYPE html>
<sling:adaptTo adaptable="${resource}" adaptTo="org.apache.sling.api.resource.ValueMap" var="vmap"/>
<sling:getProperty properties="${vmap}" key="name" var="resourceName"/>
<html>
    <head>
        <title>${resourceName}</title>
    </head>
    <body>

    </body>
</html>