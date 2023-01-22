$ImdsServer = "http://169.254.169.254"
$InstanceEndpoint = $ImdsServer + "/metadata/instance"
$uri = $InstanceEndpoint + "?api-version=2021-02-01"

$Proxy=New-object System.Net.WebProxy
$WebSession=new-object Microsoft.PowerShell.Commands.WebRequestSession
$WebSession.Proxy=$Proxy
$output=Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri $uri -WebSession $WebSession

$output | ConvertTo-JSON 