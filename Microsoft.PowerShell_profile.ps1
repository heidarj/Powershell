
if ($Host.UI.RawUI.WindowTitle -like "*Administrator*") {
	$Host.UI.RawUI.WindowTitle = ("PS Priviledged session")
} else { $Host.UI.RawUI.WindowTitle = (whoami) }

$Global:PromptDate = (get-date).toshorttimestring()
$Global:PromptSlash = " \\"
$Global:PromptCompName = $env:COMPUTERNAME 
$Global:PromptColor1 = "Green"
$Global:PromptColor2 = "Yellow"


function prompt {
	if ((Get-location).path -like "c:\windows*") {
		write-host $Global:PromptDate -ForegroundColor $Global:PromptColor2 -NoNewline;
		write-host $Global:PromptSlash -ForegroundColor $Global:PromptColor1 -NoNewline;
		write-host $Global:PromptCompName -ForegroundColor $Global:PromptColor2 -NoNewline;
		write-host "\" -ForegroundColor $Global:PromptColor1 -NoNewline;
		write-host (get-location) -ForegroundColor "Red" -NoNewline;
		write-host " >" -ForegroundColor $Global:PromptColor1 -NoNewline;
		return " ";
	}
	else {
		write-host $Global:PromptDate -ForegroundColor $Global:PromptColor2 -NoNewline;
		write-host $Global:PromptSlash -ForegroundColor $Global:PromptColor1 -NoNewline;
		write-host $Global:PromptCompName -ForegroundColor $Global:PromptColor2 -NoNewline;
		write-host ("\" + (get-location) + " >") -ForegroundColor $Global:PromptColor1 -NoNewline;
		return " ";
	}

}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

cls
