@echo off
set dumpCmd=%~dp0..\..\bin\Release\SaveDataDumper.exe

for %%f in (%~dp0*) do (echo %%f|findstr /R "\save_data_[0-9]*$">nul 2>&1) && (
    "%dumpCmd%" -f "%%f">"%%f.txt"
)
