# WingetTest
wingetの検証用

## 使い方
1. `packages.txt`にインストールしたいパッケージを記入
2. `auto_install.ps1`をPowerShellで実行

![image](https://user-images.githubusercontent.com/40651807/189394031-230a119f-149b-4b2a-bca9-6fbc3bdf0b10.png)

## 注意事項
### 管理者権限への昇格について
[こちらの記事](https://www.cats-insteadof-pc.net/wpdb/index.php/2021/12/31/runas/)を参考に管理者権限でPS1ファイルを実行し直す処理を書いています。

### 並列インストールについて
実験のために並列でインストールしていますが、この方法ではインストールされないパッケージがあるかもしれません。
`auto_install.ps1`を以下のように書き換えることで1個ずつインストールするようになります。

並列処理の場合
```cs
Start-Process powershell "winget install -e --id $package"
```

逐次処理の場合
```cs
winget install -e --id $package
```
