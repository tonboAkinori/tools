Import-Module $PSScriptRoot\Gui     #Gui自作モジュール
Import-Module $PSScriptRoot\IO-File #ファイル読み込み自作モジュール


<#
#################
フォーム作成
#################
#>

# フォーム作成
$form = Initialize-Form "チェックサム計算" 500 300

<#
#################
コンボボックス
https://docs.microsoft.com/ja-jp/dotnet/api/system.windows.forms.combobox?view=windowsdesktop-6.0
#################
#>

#コンボボックス作成
$combo = Initialize-ComboBox 50 50 300 100

$file = Get-ChildItem -Name -File

#コンボボックス追加
Add-ComboBoxArrayItem ([ref]$combo) $file

#コンボボックスにイベントハンドラ登録
$combo.Add_DropDownClosed({
#[System.Windows.MessageBox]::Show("Form_Shownが呼ばれました！")
})

#コンボボックス配置
$form.Controls.Add($combo)

<#
#################
ボタン
#################
#>

#ボタン作成
$button = Initialize-Button 200 200 100 50

#ボタンにイベントハンドラ登録
$check_sum = 0
$button.Add_Click({
    $filepath = $combo.SelectedItem | Resolve-Path
    Write-Host $filepath

    $readline = Read-File $filepath


    Write-Host ================

    foreach($d in $readline){
    
        Write-Host $d.Substring(0,2457)
        Write-Host $d.Substring(2,2)
        Write-Host $d.Substring(4,2)
        Write-Host $d.Substring(6,2)

        $byte1 = [Convert]::ToUint32($d.Substring(0,2),16)
        $byte2 = [Convert]::ToUint32($d.Substring(2,2),16)
        $byte3 = [Convert]::ToUint32($d.Substring(4,2),16)
        $byte4  = [Convert]::ToUint32($d.Substring(6,2),16)

        $sum = $byte1 + $byte2 + $byte3 + $byte4
        $check_sum += ($sum -band 0xFF)

        Write-Host $byte1 $byte2 $byte3 $byte4
        Write-Host $sum $check_sum.ToString("X2")
      }
    
})

#ボタン配置
$form.Controls.Add($button)

<#
#################
フォーム表示
#################
#>

$result = $form.ShowDialog()





