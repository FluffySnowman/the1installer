Write-Host "Welcome to The 1 Installer"

$input1 = Read-Host "Search Sofware to Download>>> "
$allsources = Get-Content -Path "sources.list"

Write-Host "==========================Software List=========================="

foreach ($line in $allsources)
{
    if ($line -match $input1)
    {
        $thingtodownload_foreach = $line | select-string -pattern $input1
        $todownload_foreach = $thingtodownload_foreach -Split "->"
        $url_foreach = $todownload_foreach[2]
        $file_foreach = $todownload_foreach[1]
        $software_name = $todownload_foreach[0]
        
        Write-Host "Software Name: $software_name"
    }
}

Write-Host "================================================================="

$inputinstall = Read-Host "Type in the EXACT name of the software you want to download>>> "
Write-Host "You have chosen to download $inputinstall"

$download_sources_line = (select-string -Path sources.list -pattern $inputinstall)
$download_sources_splitter = $download_sources_line -Split "->"
$url = $download_sources_splitter[2]
$file = $download_sources_splitter[1]

pause

Write-Host "Downloading $inputinstall..."

# Downloading the software using curl

curl -v -o downloads\$file -UseBasicParsing $url







<# if ($input1 -eq "vscode") {

    $temp1 = Read-Host "Press enter to continue download..."
    Write-Host "Downloading Visual Studio Code..."
    $allsources = Get-Content -Path "sources.list"
    $thingtodownload = (select-string -Path sources.list -pattern "vscode")
    $todownload = $thingtodownload -Split "->"
    $url = $todownload[2]
    $file = $todownload[1]
    curl -v -o -UseBasicParsing $file $url
    Write-Host "Download Complete!"

} else {
    Write-Host "Invalid Input"
}

pause
#>







Write-Host "Download Completed Successfully!"

$install_yes_no = Read-Host "Do you want to install $inputinstall? (y/n) "

if ($install_yes_no -eq "y") {
    Write-Host "Installing $inputinstall..."

    $extension1 = $file.Extension 

    if ( $extension1 -eq ".exe" ) {
        $install = Start-Process -FilePath downloads\$file -ArgumentList "/S" -Wait -PassThru
    } elseif ( $extension1 -eq ".msi" ) {
        $install = start downloads\$file
    }

    Write-Host "Installation Complete!"

} else {
    Write-Host "Installation Cancelled!"
}

Write-Host "Thank you for using The 1 Installer :)"
Write-Host "Run this program again to install more software!"

pause