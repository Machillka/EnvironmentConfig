# 激活 windows
slmgr -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr -skms kms.0t.net.cn
slmgr -ato

# 右键菜单复原
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

# 临时代理 ( 对话级别 )
$env:HTTP_PROXY='127.0.0.1:2080'
$env:HTTPS_PROXY='127.0.0.1:2080'

# 配置 scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser


## 配置安装目录
$env:scoopLocal='D:\Scoop'
$env:scoopGlobal='D:\Scoop\Global'

[System.Environment]::SetEnvironmentVariable('SCOOP', $env:scoopLocal, 'User')
[System.Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:scoopGlobal, 'Machine')

## 安装
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

## 配置 scoop 代理
scoop config proxy 127.0.0.1:2080