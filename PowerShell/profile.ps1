If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
    Import-Module Get-ChildItemColor
    
    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

Import-Module posh-git

Import-Module oh-my-posh
Set-Theme Robbyrussell

Set-Alias whereis where.exe
Set-Alias stat Get-ItemProperty
Set-Alias r Far.exe

Function la { Get-ChildItemColorFormatWide -Force }
