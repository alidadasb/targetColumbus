<html>
<head>
    <title></title>
</head>
<body>
<g:each in="${stores.Locations.Location}" var="loc">
    <address>
        <strong>${loc.Name}   </strong><br>

        ${loc.Address.FormattedAddress},
        ${loc.SubTypeDescription}  <br>
        Hours: ${loc.OperatingHours.Hours.ShortName}  <br>

        <abbr title="Phone">P:</abbr> ${loc.TelephoneNumber.PhoneNumber}  <br>
        <g:remoteLink action="dealsList" id="${loc.Address.PostalCode}" update="deals" onLoading="showSpinner();"> Find Deal</g:remoteLink>

    </address>


</g:each>

</body>
</html>