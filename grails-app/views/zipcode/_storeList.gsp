<html>
<head>
    <title></title>
</head>
<body>

<p> Please enter your zip code to find the deals around your area</p>
<g:each in="${stores}" var="loc">
    <address>
        <strong>${loc.value.Location.Name}   </strong><br>
        ${loc.value.Location.Address.PostalCode}   <br>
        ${loc.value.Location.Address.AddressLine1}   <br>
        ${loc.value.Location.SubTypeDescription}  <br>
        Hours: ${loc.value.Location.OperatingHours.Hours.ShortName}  <br>

        <abbr title="Phone">P:</abbr> ${loc.value.Location.TelephoneNumber.PhoneNumber}  <br>
        <g:link class="btn" id= "${loc.value.Location.ID}" action="findDeal">    Find Deal</g:link>
    </address>


</g:each>

</body>
</html>