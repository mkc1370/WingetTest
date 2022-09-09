# ref : https://www.cats-insteadof-pc.net/wpdb/index.php/2021/12/31/runas/
# 管理者権限で実行されていなければ、スクリプトを管理者権限で実行し直す
If (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')){
    Start-Process -FilePath PowerShell.exe -ArgumentList "-NoLogo -ExecutionPolicy Bypass -File $($MyInvocation.MyCommand.Path)" -Verb RunAs
    Exit
}

# カレントディレクトリをps1のある位置に変更する
Set-Location -Path $PSScriptRoot

# パッケージの一覧を読み込んで、逐次インストールする
$packages = Get-Content packages.txt
foreach($package in $packages){
    winget install -e --id $package
}
