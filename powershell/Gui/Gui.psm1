#windows formsのアセンブリ読み込み
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#https://docs.microsoft.com/ja-jp/dotnet/api/?view=netframework-4.8

$Font = New-Object System.Drawing.Font("メイリオ",10)

#フォーム作成
function Initialize-Form([string]$text, [int]$width, [int]$height)
{
    $form = New-Object System.Windows.Forms.Form
    $form.Text = $text
    $form.Size = New-Object System.Drawing.Size($width,$height)

    return ($form)
}

#コンボボックス作成
function Initialize-ComboBox([int]$x, [int]$y, [int]$width, [int]$height)
{
    $combo = New-Object System.Windows.Forms.Combobox
    $combo.Location = New-Object System.Drawing.Point($x, $y)
    $combo.size = New-Object System.Drawing.Size($width, $height)
    $combo.DropDownStyle = "DropDown"
    $combo.FlatStyle = "standard"
    $combo.font = $Font
    $combo.BackColor = "white"
    $combo.ForeColor = "black"

    return ($combo)
}

#コンボボックスアイテム シングル追加
function Add-ComboBoxSingleItem([ref]$combox, [object]$obj)
{
[void] $combox.Value.Items.Add($obj)
}

#コンボボックスアイテム シングル追加
function Add-ComboBoxArrayItem([ref]$combox, [object]$obj)
{
[void] $combox.Value.Items.AddRange($obj)
}

#ボタン作成
function Initialize-Button([int]$x, [int]$y, [int]$width, [int]$height)
{
    $button = New-Object System.Windows.Forms.Button
    $button.Location = New-Object System.Drawing.Point($x, $y)
    $button.Size = New-Object System.Drawing.Size($width, $height)
    $button.font = $Font
    $button.Text = "チェックサム計算"

    return ($button)
}