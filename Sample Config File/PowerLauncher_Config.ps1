<#
.SYNOPSIS
    PowerLauncher Custom Configuration
.DESCRIPTION
    This File should be placed in C:\ProgramData\PowerLauncher

    All custom button configurations should be defined here.

    The 'script' detail should only include items that can be launched via Start-Process. Currently, there is no support for supplying
    an argument list.
.EXAMPLE
    $CustomButton1_Text = "Notepad"
    $CustomButton1_Script = "notepad.exe"

    $CustomButton2_Text = "Word"
    $CustomButton2_Script = "winword.exe"
.NOTES
    20140909    K. Kirkpatrick      Created

[-------------------------------------DISCLAIMER-------------------------------------]
 All script are provided as-is with no implicit
 warranty or support. It's always considered a best practice
 to test scripts in a DEV/TEST environment, before running them
 in production. In other words, I will not be held accountable
 if one of my scripts is responsible for an RGE (Resume Generating Event).
 If you have questions or issues, please reach out/report them on
 my GitHub page. Thanks for your support!
[-------------------------------------DISCLAIMER-------------------------------------]
.LINK
    https://github.com/vN3rd
#>

$CustomButton1_Text = "Notepad"
$CustomButton1_Script = "notepad.exe"

$CustomButton2_Text = "Word"
$CustomButton2_Script = "winword.exe"

$CustomButton3_Text = "PowerShell"
$CustomButton3_Script = "powershell.exe"

$CustomButton4_Text = "Excel"
$CustomButton4_Script = "excel.exe"

$CustomButton5_Text = "Cmder"
$CustomButton5_Script = "C:\bin\cmder\cmder.exe"

$CustomButton6_Text = "Google"
$CustomButton6_Script = "https://www.google.com"

$CustomButton7_Text = ""
$CustomButton7_Script = ""

$CustomButton8_Text = "vN3rd GitHub"
$CustomButton8_Script = "https://github.com/vN3rd"

$CustomButton9_Text = ""
$CustomButton9_Script = ""