<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

<g:formRemote name="myForm" on404="alert('not found!')" update="updateMe1"
              url="[controller: 'zipcode', action:'zipcode']">
    Zip Code : <input zipcode="id" type="text" />
</g:formRemote>

<div id="updateMe1"></div>

</body>

</html>
