#--------------------------------------------
# Declare Global Variables and Functions here
#--------------------------------------------

$ConfigFilePath = "$env:allusersprofile\PowerLauncher\PowerLauncher_Config.ps1"

. $ConfigFilePath

$Log = "$env:allusersprofile\PowerLauncher\PowerLauncher.log"
$AppVersion = "v1.0.0"

function Test-ConfigFile
{
	if (!(Test-Path $ConfigFilePath))
	{
		$lbstatus.forecolor = 'Red'
		$lbstatus.text = "Config File Not Found"
	} else
	{
		$lbstatus.text = $null
	}
}

function Load-ConfigFileVariables
{
	$btnCustom1.Text = $CustomButton1_Text
	$btnCustom2.Text = $CustomButton2_Text
	$btnCustom3.Text = $CustomButton3_Text
	$btnCustom4.Text = $CustomButton4_Text
	$btnCustom4.Text = $CustomButton4_Text
	$btnCustom5.Text = $CustomButton5_Text
	$btnCustom6.Text = $CustomButton6_Text
	$btnCustom7.Text = $CustomButton7_Text
	$btnCustom8.Text = $CustomButton8_Text
	$btnCustom9.Text = $CustomButton9_Text
}

function Load-Buttons
{
	if ($btnCustom1.Text -eq '') { $btnCustom1.Text = "Custom Button 1"; $btnCustom1.Enabled = $false }
	if ($btnCustom2.Text -eq '') { $btnCustom2.Text = "Custom Button 2"; $btnCustom2.Enabled = $false }
	if ($btnCustom3.Text -eq '') { $btnCustom3.Text = "Custom Button 3"; $btnCustom3.Enabled = $false }
	if ($btnCustom4.Text -eq '') { $btnCustom4.Text = "Custom Button 4"; $btnCustom4.Enabled = $false }
	if ($btnCustom5.Text -eq '') { $btnCustom5.Text = "Custom Button 5"; $btnCustom5.Enabled = $false }
	if ($btnCustom6.Text -eq '') { $btnCustom6.Text = "Custom Button 6"; $btnCustom6.Enabled = $false }
	if ($btnCustom7.Text -eq '') { $btnCustom7.Text = "Custom Button 7"; $btnCustom7.Enabled = $false }
	if ($btnCustom8.Text -eq '') { $btnCustom8.Text = "Custom Button 8"; $btnCustom8.Enabled = $false }
	if ($btnCustom9.Text -eq '') { $btnCustom9.Text = "Custom Button 9"; $btnCustom9.Enabled = $false }
}

Function logstamp
{
	#returns a padded timestamp string like 200705231132
	$now = Get-Date
	$yr = $now.Year.ToString()
	$mo = $now.Month.ToString()
	$dy = $now.Day.ToString()
	$hr = $now.Hour.ToString()
	$mi = $now.Minute.ToString()
	
	if ($mo.length -lt 2)
	{
		$mo = "0" + $mo #pad single digit months with leading zero
	}
	
	if ($dy.length -lt 2)
	{
		$dy = "0" + $dy #pad single digit day with leading zero
	}
	
	if ($hr.length -lt 2)
	{
		$hr = "0" + $hr #pad single digit hour with leading zero
	}
	
	if ($mi.length -lt 2)
	{
		$mi = "0" + $mi #pad single digit minute with leading zero
	}
	
	write-output $yr$mo$dy$hr$mi
}

function Disable-Buttons
{
	$btnCustom1.Enabled = $false
	$btnCustom5.Enabled = $false
	$btnCustom3.Enabled = $false
	$btnCustom4.Enabled = $false
	$btnCustom2.Enabled = $false
	$btnCustom6.Enabled = $false
	$btnCustom7.Enabled = $false
	$btnCustom8.Enabled = $false
	$btnCustom9.Enabled = $false
}

function Enable-Buttons
{
	$btnCustom1.Enabled = $true
	$btnCustom2.Enabled = $true
	$btnCustom3.Enabled = $true
	$btnCustom4.Enabled = $true
	$btnCustom5.Enabled = $true
	$btnCustom6.Enabled = $true
	$btnCustom7.Enabled = $true
	$btnCustom8.Enabled = $false
	$btnCustom9.Enabled = $false
}

function Clear-Formats
{
	$lbStatus.Text = $null
}



<# Sample Functions 

#Sample function that provides the location of the script
function Get-ScriptDirectory
{
	if ($hostinvocation -ne $null)
	{
		Split-Path $hostinvocation.MyCommand.path
	} else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory

#>

