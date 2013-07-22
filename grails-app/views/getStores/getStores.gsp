<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
${stores.class}
  <g:each in="${stores}" var="loc">
      The ID of Store : ${loc.ID}
  </g:each>

</body>
</html>