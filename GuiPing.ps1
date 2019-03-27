#Powershell GUI for Ping

#Import Windows forms
Add-Type -Assembly System.Windows.Forms

#Create Windows form object
$main_form = New-Object System.Windows.Forms.Form

#Add attributes to form:
$main_form.Text = 'GuiPing v1'
$main_form.Width = 800
$main_form.Height = 400

#Allow the form to stretch if items are out of bounds
$main_form.AutoSize = $true

#title label for application
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "GUIPING"
$Label.AutoSize = $true
$Label.Location = New-Object System.Drawing.Point(0,10)

#Create a gridview for Ping results
$dataGridview = New-Object System.Windows.Forms.DataGridView
$dataGridview.Size = New-Object System.Drawing.Size(800,400)
$dataGridview.Location = New-Object System.Drawing.point(0,40)

#create input for ip address
#$inputbox = New-Object System.Windows.Forms.

#Packing gui
$main_form.Controls.Add($Label)
$main_form.Controls.Add($dataGridview)
#Display GUI
$main_form.ShowDialog()