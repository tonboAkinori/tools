#ファイル読み込み
function Read-File([string]$path)
{
    return Get-Content $path
}
