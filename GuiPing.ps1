#Powershell GUI for Ping

#Import Windows forms
Add-Type -Assembly System.Windows.Forms

#Create Windows form object
$main_form = New-Object System.Windows.Forms.Form

#Add attributes to form:
$main_form.Text = 'GuiPing v1'
$main_form.Width = 600
$main_form.Height = 400

#Allow the form to stretch if items are out of bounds
$main_form.AutoSize = $true

$main_form.ShowDialog()