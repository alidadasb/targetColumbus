<html>
<head>
    <title></title>
</head>
<body>
${stores}
<g:each in="${stores.Locations.Location}" var="loc">
    The ID of Store : ${loc.ID}
</g:each>

</body>
</html>