#for %%F in (D:\mkv-output-staged-for-encode\*.mkv) do (
#	D:\apps\handbrake-cli\HandbrakeCLI.exe ^
#		-Z "Fast 1080p30" -i "%%F" -o "D:\handbrake-output-2\%%~nF.m4v"
#)


Get-ChildItem -Path E:\make-mkv-output-staged-for-encode-02\*.mkv –Recurse |
ForEach-Object {

	#Write-Output $('PARENT:')

	$newFolder = Split-Path (Split-Path $_ -Parent) -Leaf
	$newFolder = $('d:\handbrake-output-2\') + $newFolder
	#Write-Output $newFolder
	New-Item -Path $newFolder -ItemType directory -Force

	$command = 
		$('D:\apps\handbrake-cli\HandbrakeCLI.exe --subtitle=1,2,3,4,5,6,7,8,9,10 --all-audio -Z "Fast 1080p30"') + 
		$(' -i "') + $_.FullName + $('"') +
		$(' -o "') + $newFolder + $('\') + $_.BaseName + $('.mkv"')
    
	Write-Output $command
    iex $command
}