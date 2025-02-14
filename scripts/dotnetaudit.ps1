dotnet list package --vulnerable --include-transitive | Tee-Object vulnerable.out

function CalculateVulnLines {
  param($RegexString)
  $vulnsResult = get-content .\vulnerable.out | Select-String -Pattern $RegexString
  $vulnCount = $vulnsResult | Measure-Object -Line
  $vulnCount.Lines
}

$vCritical = CalculateVulnLines " Critical "
$vHigh = CalculateVulnLines " High "
$vModerate = CalculateVulnLines " Moderate "
$vLow = CalculateVulnLines " Low "
$vTotal = $vCritical + $vHigh + $vModerate + $vLow
Write-Output $vTotal
