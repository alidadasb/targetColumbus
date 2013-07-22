<html>
<head>
    <title></title>
</head>
<body>
<g:each in="${stores}" var="loc">
    <address>
        <strong>${loc.value.Location.Name}   </strong><br>

        ${loc.value.Location.Address.FormattedAddress},
        ${loc.value.Location.SubTypeDescription}  <br>
        Hours: ${loc.value.Location.OperatingHours.Hours.ShortName}  <br>

        <abbr title="Phone">P:</abbr> ${loc.value.Location.TelephoneNumber.PhoneNumber}  <br>
        <g:remoteLink action="findDeal" id="${loc.value.Location.ID}" update="deals" onLoading="showSpinner();"> Find Deal</g:remoteLink>

    </address>


</g:each>

</body>
</html>