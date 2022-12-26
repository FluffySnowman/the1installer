$searchTerm = Read-Host "Enter the search term: "
$lines = Get-Content -Path sources.list

foreach ($line in $lines)
{
    if ($line -match $input1)
    {
        Write-Output $line[0]
        $aaa = $line[0]
        Write-Host $aaa
    }
}