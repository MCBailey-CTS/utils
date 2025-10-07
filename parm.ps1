param(
    [Parameter(HelpMessage="Forces execution")]
    [switch]$Force = $False,

    [Parameter(Mandatory, HelpMessage="The path to affect")]
    [string]$Path
)

Write-Output "Force: $Force"
Write-Output "Path: $Path"