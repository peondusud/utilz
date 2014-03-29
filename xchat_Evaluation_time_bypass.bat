@echo off
attrib -r -h -s -a -i "%ProgramFiles%\xchat\inst.conf"
del /f /q "%ProgramFiles%\xchat\inst.conf"
attrib -r -h -s -a -i "%ProgramFiles(x86)%\xchat\inst.conf"
del /f /q "%ProgramFiles(x86)%\xchat\inst.conf"
reg DELETE "HKEY_CURRENT_USER\Software\XChat" /f
"%ProgramFiles%\xchat\xchat.exe"
"%ProgramFiles(x86)%\xchat\xchat.exe"
exit
