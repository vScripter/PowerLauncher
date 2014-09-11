#--------------------------------------------
# Declare Global Variables and Functions
#--------------------------------------------

#region Declare Functions
function Tab-Title
{
	if (($tabPage1Title -eq "") -or ($tabPage1Title -eq $null))
	{
		$tabPg1.Text = "Page 1"
	} else
	{
		$tabPg1.Text = $tabPage1Title
	}
	
	if (($tabPage2Title -eq "") -or ($tabPage2Title -eq $null))
	{
		$tabPg2.Text = "Page 2"
	} else
	{
		$tabPg2.Text = $tabPage2Title
	}
}# end function Tab-Title

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

function Load-ConfigFileVariables
{
	$btnCustom1.Text = $CustomButton1_Text
	$btnCustom2.Text = $CustomButton2_Text
	$btnCustom3.Text = $CustomButton3_Text
	$btnCustom4.Text = $CustomButton4_Text
	$btnCustom5.Text = $CustomButton5_Text
	$btnCustom6.Text = $CustomButton6_Text
	$btnCustom7.Text = $CustomButton7_Text
	$btnCustom8.Text = $CustomButton8_Text
	$btnCustom9.Text = $CustomButton9_Text
	$btnCustom10.Text = $CustomButton10_Text
	$btnCustom11.Text = $CustomButton11_Text
	$btnCustom12.Text = $CustomButton12_Text
	$btnCustom13.Text = $CustomButton13_Text
	$btnCustom14.Text = $CustomButton14_Text
	$btnCustom15.Text = $CustomButton15_Text
	$btnCustom16.Text = $CustomButton16_Text
	$btnCustom17.Text = $CustomButton17_Text
	$btnCustom18.Text = $CustomButton18_Text
	$btnCustom19.Text = $CustomButton19_Text
	$btnCustom20.Text = $CustomButton20_Text
	
	
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
	if ($btnCustom10.Text -eq '') { $btnCustom10.Text = "Custom Button 10"; $btnCustom10.Enabled = $false }
	if ($btnCustom11.Text -eq '') { $btnCustom11.Text = "Custom Button 11"; $btnCustom11.Enabled = $false }
	if ($btnCustom12.Text -eq '') { $btnCustom12.Text = "Custom Button 12"; $btnCustom12.Enabled = $false }
	if ($btnCustom13.Text -eq '') { $btnCustom13.Text = "Custom Button 13"; $btnCustom13.Enabled = $false }
	if ($btnCustom14.Text -eq '') { $btnCustom14.Text = "Custom Button 14"; $btnCustom14.Enabled = $false }
	if ($btnCustom15.Text -eq '') { $btnCustom15.Text = "Custom Button 15"; $btnCustom15.Enabled = $false }
	if ($btnCustom16.Text -eq '') { $btnCustom16.Text = "Custom Button 16"; $btnCustom16.Enabled = $false }
	if ($btnCustom17.Text -eq '') { $btnCustom17.Text = "Custom Button 17"; $btnCustom17.Enabled = $false }
	if ($btnCustom18.Text -eq '') { $btnCustom18.Text = "Custom Button 18"; $btnCustom18.Enabled = $false }
	if ($btnCustom19.Text -eq '') { $btnCustom19.Text = "Custom Button 19"; $btnCustom19.Enabled = $false }
	if ($btnCustom20.Text -eq '') { $btnCustom20.Text = "Custom Button 20"; $btnCustom20.Enabled = $false }
	
}

function logstamp
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
	$btnCustom2.Enabled = $false
	$btnCustom3.Enabled = $false
	$btnCustom4.Enabled = $false
	$btnCustom5.Enabled = $false
	$btnCustom6.Enabled = $false
	$btnCustom7.Enabled = $false
	$btnCustom8.Enabled = $false
	$btnCustom9.Enabled = $false
	$btnCustom10.Enabled = $false
	$btnCustom11.Enabled = $false
	$btnCustom12.Enabled = $false
	$btnCustom13.Enabled = $false
	$btnCustom14.Enabled = $false
	$btnCustom15.Enabled = $false
	$btnCustom16.Enabled = $false
	$btnCustom17.Enabled = $false
	$btnCustom18.Enabled = $false
	$btnCustom19.Enabled = $false
	$btnCustom20.Enabled = $false
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
	$btnCustom8.Enabled = $true
	$btnCustom9.Enabled = $true
	$btnCustom10.Enabled = $true
	$btnCustom11.Enabled = $true
	$btnCustom12.Enabled = $true
	$btnCustom13.Enabled = $true
	$btnCustom14.Enabled = $true
	$btnCustom15.Enabled = $true
	$btnCustom16.Enabled = $true
	$btnCustom17.Enabled = $true
	$btnCustom18.Enabled = $true
	$btnCustom19.Enabled = $true
	$btnCustom20.Enabled = $true

}

#endregion Declare Functions
#region Declare Variables

[string]$ScriptDirectory = Get-ScriptDirectory

$ConfigFilePath = "$ScriptDirectory\PowerLauncher_Config.ps1"

. $ConfigFilePath

$Log = "$ScriptDirectory\PowerLauncher.log"

$AppVersion = "v1.2.0"

#endregion Declare Variables