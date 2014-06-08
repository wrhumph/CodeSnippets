
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

$colors = $host.PrivateData
$colors.VerboseForegroundColor = "black"
$colors.VerboseBackgroundColor = "white"
$colors.WarningForegroundColor = "magenta"
$colors.WarningBackgroundColor = "white"
$colors.ErrorForegroundColor = "red"
$colors.ErrorBackgroundColor = "white"

Set-Alias np 'C:\Program Files (x86)\Notepad++\notepad++.exe'

function home { Set-Location C:\Users\Pete }

function Show-Colors {
    Write-Warning "This is a warning message"
	Write-Error "This is an error message"
	Write-Debug "This is a debug message"
}

function ex { explorer . }

Set-Location C:\Users\Pete

function prompt { 
    $loc = get-location; 
	$dir = [System.IO.Path]::GetFilename($loc); 
	return ("" + $dir + ">")
}


