c:\windows\system32\inetsrv\appcmd.exe set config /section:serverRuntime /appConcurrentRequestLimit:100000

reg add HKLM\System\CurrentControlSet\Services\HTTP\Parameters /v MaxConnections /t REG_DWORD /d 100000

echo 修改应用程序池队列长度为65525
c:\windows\system32\inetsrv\inetmgr.exe

echo 修改processModel节点添加： requestQueueLimit="100000"
notepad %systemroot%\Microsoft.Net\Framework64\v2.0.50727\CONFIG\machine.config

pause