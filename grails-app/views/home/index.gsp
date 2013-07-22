<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>
<p>The idea is to locate a store based on the zip code and return all the
    weekely deals for stores around that zipcode.
</p>
<p> Please enter your zip code to find the deals around your area</p>

<g:formRemote name="myForm" on404="alert('not found!')" update="updateMe1"
              url="[controller: 'zipcode', action:'zipcode']">
    Zip Code : <input zipcode="id" type="text" />
</g:formRemote>

<div id="updateMe1"></div>
<div id="deals"></div>


</body>

</html>
