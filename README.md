# WingetTest
wingetの検証用

## 使い方
1. `packages.txt`にインストールしたいパッケージを記入
2. `auto_install.ps1`をPowerShellで実行

## 注意事項
### 並列インストールについて
実験のために並列でインストールしていますが、この方法ではインストールされないパッケージがあるかもしれません。
`auto_install.ps1`を以下のように書き換えることで1個ずつインストールするようになります。
```cs
Start-Process powershell "winget install -e --id $package"
```
```cs
winget install -e --id $package
```
