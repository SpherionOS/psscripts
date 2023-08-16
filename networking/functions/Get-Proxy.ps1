# Creates function of Get-Proxy
function Get-Proxy {
# Define the parameter "-Proxy"
    param (
        [string[]]$Proxy
    )
# For a parameter in $Proxy set $Results to the proxy
    foreach ($Parameter in $Proxy) {
        $Results = netsh winhttp set proxy $Parameter
        }
# Define $Wcl as a new object call System.Net.WebClient
        $Wcl=New-Object System.Net.WebClient
# Define $Creds with a pop up boc credential
        $Creds=Get-Credential
# Define Wcl.Proxy.Credentials with the credentials found in $Creds
        $Wcl.Proxy.Credentials=$Creds

}
