<html>
<head>
    <title></title>
    <meta name="layout" content="kickstart" />
</head>
<body>
<g:each in="${deals.stores}" var="deal">
    <address>
        <strong><a href="${deal.url}">Special Deal</a> </strong><br>
        ${deal.address}<br>
        <abbr title="Phone"></abbr>   <br>
    </address>


</g:each>

</body>
</html>>