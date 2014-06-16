function prompt { 
    $loc = get-location; 
	$dir = [System.IO.Path]::GetFilename($loc); 
	return ("" + $dir + ">")
}

function boottime
{
    Get-CimInstance -ClassName win32_operatingsystem | select csname, lastbootuptime
}

Set-Alias -Name np -Value 'C:\Program Files (x86)\Notepad++\notepad++.exe'
Set-Alias -Name ll -Value "dir"


$console = $host.UI.RawUI

$console.ForegroundColor = "black"
$console.BackgroundColor = "white"


$buffer = $console.BufferSize
$buffer.Width = 130
$buffer.Height = 2000
$console.BufferSize = $buffer

$size = $console.WindowSize
$size.Width = 130
$size.Height = 50
$console.WindowSize = $size

#$colors = $host.PrivateData
#$colors.VerboseForegroundColor = "black"
#$colors.VerboseBackgroundColor = "white"
#$colors.WarningForegroundColor = "magenta"
#$colors.WarningBackgroundColor = "white"
#$colors.ErrorForegroundColor = "red"
#$colors.ErrorBackgroundColor = "white"

$h = Get-Host
$ui = $h.UI
$raw = $ui.RawUI

$raw.ForegroundColor       = "Black"
$raw.BackgroundColor       = "White"
$raw.WindowTitle           = "Petes PowerShell";

$pd = (Get-Host).PrivateData
$pd.ErrorForegroundColor    = "Red"
$pd.ErrorBackgroundColor    = "White"
$pd.WarningForegroundColor  = "Red"
$pd.WarningBackgroundColor  = "White"
$pd.DebugForegroundColor    = "Blue"
$pd.DebugBackgroundColor    = "White"
$pd.VerboseForegroundColor  = "Black"
$pd.VerboseBackgroundColor  = "White"
$pd.ProgressForegroundColor = "Green"
$pd.ProgressBackgroundColor = "White"

function home { Set-Location C:\Users\Pete }

function Show-Colors {
    Write-Warning "This is a warning message"
	Write-Error "This is an error message"
	Write-Debug "This is a debug message"
}

function ex { explorer . }

Set-Location C:\Users\Pete



