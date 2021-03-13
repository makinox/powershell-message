Write-Host 'Hi Jesu, Happy coding 🕕 ' (Get-Date -Format HH:mm)
Write-Host ''
$GitPromptSettings.DefaultPromptPrefix.Text = '$(Get-Date -f "MM/dd") '
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::DarkCyan
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.BranchIdenticalStatusSymbol = ''
$GitPromptSettings.EnableFileStatus = $false
$GitPromptSettings.BeforeStatus = '(' 
$GitPromptSettings.AfterStatus = ')'
$GitPromptSettings.BeforeStatus.ForegroundColor = 0x0067b7
$GitPromptSettings.AfterStatus.ForegroundColor = 0x0067b7

function prompt {
    $prompt = Write-Prompt "山 " -ForegroundColor White
    $prompt += & $GitPromptScriptBlock
    if ($prompt) {$prompt} else {" "}
}

Import-Module posh-git
