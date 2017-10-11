
set SLEEP=ping 127.0.0.1 /n

title shutdown

TASKKILL /FI "WINDOWTITLE eq registration*" /IM cmd.exe /F /T
%SLEEP% 1 > nul

TASKKILL /FI "WINDOWTITLE eq provider*" /IM cmd.exe /F /T
%SLEEP% 1 > nul

TASKKILL /FI "WINDOWTITLE eq consumer*" /IM cmd.exe /F /T
%SLEEP% 1 > nul

TASKKILL /FI "WINDOWTITLE eq dashboard*" /IM cmd.exe /F /T
%SLEEP% 1 > nul

TASKKILL /FI "WINDOWTITLE eq turbine*" /IM cmd.exe /F /T
%SLEEP% 1 > nul

TASKKILL /FI "WINDOWTITLE eq gateway*" /IM cmd.exe /F /T
%SLEEP% 1 > nul

TASKKILL /FI "WINDOWTITLE eq configserver*" /IM cmd.exe /F /T
