# cerner_2^5_2018
Param(
  [string]$searchString
)

if([string]::IsNullOrWhiteSpace($searchString))
{
    Write-Host "Enter question to ask in quotations"

    return;
}

[System.Diagnostics.Process]::Start("https://stackoverflow.com/search?q=$searchString")