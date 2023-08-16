# Define netname as the networks name
$netname = get-netconnectionprofile | findstr "Name"

# If network name is a school network
if($netname -like "Name                     : gbn.eq.edu.au")
{
# Reset the dns client list to DHCP default
Set-DnsClientServerAddress -InterfaceIndex 9 -ResetServerAddresses
read-host -prompt "School network detected. DNS reset to DHCP defaults"
}
else
{
# Else, do not do anything
"School network not detected, terminating program"
}
