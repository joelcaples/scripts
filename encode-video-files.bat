for %%F in (D:\make-mkv-output-staged-for-encode\*.mkv) do (
    D:\apps\handbrake-cli\HandBrakeCLI.exe ^
                      -Z "Fast 1080p30" -i "%%F" -o "D:\handbrake-output-2\%%~nF.m4v"
)

::  --preset-import-file "preset-name.json"
::    (other command(s) featuring "%%F", "%%~nF", etc.)
