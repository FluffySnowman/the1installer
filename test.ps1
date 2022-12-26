Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "Testing Custom MessageBox"
$Form.Width = 350
$Form.Height = 100
$Form.ControlBox = $False
$Form.StartPosition = "CenterScreen"

$Font = New-Object System.Drawing.Font("Tahoma",10,[System.Drawing.FontStyle]::Bold)
$Form.Font = $Font

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Custom MsgBox!"
$Label.AutoSize = $True
$Form.Controls.Add($Label)

$Button1 = new-object System.Windows.Forms.Button
$Button1.Location = new-object System.Drawing.Size(5,25)
$Button1.Size = new-object System.Drawing.Size(75,25)
$Button1.Text = "Button1"
$Button1.Add_Click({Write-Host "Button1 was pressed";$Form.Close()})
$Form.Controls.Add($Button1)
$Button2 = new-object System.Windows.Forms.Button
$Button2.Location = new-object System.Drawing.Size(85,25)
$Button2.Size = new-object System.Drawing.Size(75,25)
$Button2.Text = "Button2"
$Button2.Add_Click({Write-Host "Button2 was pressed";$Form.Close()})
$Form.Controls.Add($Button2)
$Button3 = new-object System.Windows.Forms.Button
$Button3.Location = new-object System.Drawing.Size(165,25)
$Button3.Size = new-object System.Drawing.Size(75,25)
$Button3.Text = "Button3"
$Button3.Add_Click({Write-Host "Button3 was pressed";$Form.Close()})
$Form.Controls.Add($Button3)
$Button4 = new-object System.Windows.Forms.Button
$Button4.Location = new-object System.Drawing.Size(245,25)
$Button4.Size = new-object System.Drawing.Size(75,25)
$Button4.Text = "Button4"
$Button4.Add_Click({Write-Host "Button4 was pressed";$Form.Close()})
$Form.Controls.Add($Button4)

$Form.ShowDialog() | Out-Null
pause
Exit 0