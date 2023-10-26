# Prompt the user for input
$dir = Read-Host "Enter directory path"
$type = Read-Host "Enter file type (e.g., txt, doc, etc.)"

# Search for files and display results
Get-ChildItem -Path $dir* -Filter *$type | Select-Object Name, Directory | Format-Table -AutoSize
