$searchTerm = Read-Host "Enter the search term: "
$lines = Get-Content -Path sources.list

foreach ($line in $lines)
{
    if ($line -match $searchTerm)
    {
        Write-Output $line
    }
}