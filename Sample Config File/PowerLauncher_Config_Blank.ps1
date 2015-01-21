<#
.SYNOPSIS
    PowerLauncher Custom Configuration File
.DESCRIPTION
    This File should be placed in the directory where you intend to place the .exe file

    All custom button names and functions defined here will be executed according to each button. If you modify variable names, the buttons will
    not work; the application is hard coded to read in and apply these variable names in a certain way.

    The functions will be loaded and pre-configured to execute for each button
.EXAMPLE
    $CustomButton1_Text = "Google"
    function Button1-CustomFunction {
    Start-Process -FilePath "http://www.google.com"
    }

    This would configure the button named 'Custom Buttom 1' to open google.com, using the Start-Process cmdlet
.EXAMPLE
    $CustomButton11_Text = "Github Dir"
    function Button11-CustomFunction {
    Invoke-Item -Path "C:\GitHub"
    }

    This would configure the button named 'Custom Button 11' to open the 'C:\GitHub' directory, using the Invoke-Item cmdlet
.NOTES
    [+] 20140909_K.Kirkpatrick_Created
    [+] 20140910_K.Kirkpatrick_Modified format to accomidate new button format

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
    https://github.com/vScripter
#>

# Define title of launcher tabs
$tabPage1Title = ""
$tabPage2Title = ""

# ===============================================================#
# Tab Page 1 [Buttons 1-10 appear on the first tab]              #
# ===============================================================#

$CustomButton1_Text = ""
function Button1-CustomFunction {}

$CustomButton2_Text = ""
function Button2-CustomFunction {}

$CustomButton3_Text = ""
function Button3-CustomFunction {}

$CustomButton4_Text = ""
function Button4-CustomFunction {}

$CustomButton5_Text = ""
function Button5-CustomFunction {}

$CustomButton6_Text = ""
function Button6-CustomFunction {}

$CustomButton7_Text = ""
function Button7-CustomFunction {}

$CustomButton8_Text = ""
function Button8-CustomFunction {}

$CustomButton9_Text = ""
function Button9-CustomFunction {}

$CustomButton10_Text = ""
function Button10-CustomFunction {}

# ===============================================================#
# Tab Page 2 [Buttons 11-20 appear on the second tab]            #
# ===============================================================#

$CustomButton11_Text = ""
function Button11-CustomFunction {}

$CustomButton12_Text = ""
function Button12-CustomFunction {}

$CustomButton13_Text = ""
function Button13-CustomFunction {}

$CustomButton14_Text = ""
function Button14-CustomFunction {}

$CustomButton15_Text = ""
function Button15-CustomFunction {}

$CustomButton16_Text = ""
function Button16-CustomFunction {}

$CustomButton17_Text = ""
function Button17-CustomFunction {}

$CustomButton18_Text = ""
function Button18-CustomFunction {}

$CustomButton19_Text = ""
function Button19-CustomFunction {}

$CustomButton20_Text = ""
function Button20-CustomFunction {}