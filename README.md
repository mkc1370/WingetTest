# WingetTest
wingetで複数のソフトを簡単にインストールする検証用

[このツイート](https://twitter.com/mkc1370/status/1567036982215450625)

## 使い方
### 逐次インストールをする場合
1. `packages.txt`にインストールしたいパッケージを記入
2. `auto_install_sequential.ps1`をPowerShellで実行

### 並列インストールをする場合
1. `packages.txt`にインストールしたいパッケージを記入
2. `auto_install_parallel.ps1`をPowerShellで実行

**並列インストールでは正しくインストールされないパッケージがあるかもしれません。**

![image](https://user-images.githubusercontent.com/40651807/189394031-230a119f-149b-4b2a-bca9-6fbc3bdf0b10.png)

## その他
### 管理者権限への昇格について
管理者権限で実行していなくても、管理者権限で実行することを促す処理を入れてあります。
これをすることで、実行直後のUACのみで複数のソフトをインストールすることができます。
[こちらの記事](https://www.cats-insteadof-pc.net/wpdb/index.php/2021/12/31/runas/)を参考に管理者権限でPS1ファイルを実行し直す処理を書いています。

管理者権限への昇格の処理**以外**のライセンスは**CC0**です。
