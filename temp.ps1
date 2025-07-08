# Script to define regional settings on Azure Virtual Machines deployed from the market place
# Author: Created by Alexandre Verkinderen, modified by Gabriel TISSIER
# Blogpost: https://mscloud.be/configure-regional-settings-and-windows-locales-on-azure-virtual-machines/
########################################

#variables
$regionalsettingsURL = "https://raw.githubusercontent.com/gtissier-eng/FRLang/refs/heads/main/FRRegion.xml"
$RegionalSettings = "C:\Region.xml"
$Language = "fr-CH"
$GeoId = "223"
$TimeZone = "W. Europe Standard Time"
Set-WinHomeLocation -GeoId $GeoId
Set-TimeZone -id $TimeZone

# Set Locale, language etc. 
& $env:SystemRoot\System32\control.exe "intl.cpl,,/f:`"$RegionalSettings`""
