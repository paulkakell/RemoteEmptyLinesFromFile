# Define input and output file paths
$InputFile = "C:\path\to\file\oldfile.txt"   # Replace with your text file path
$OutputFile = "C:\path\to\file\newfile.txt" # Replace with the desired output file path

# Read the input file
$Content = Get-Content -Path $InputFile

# Filter out empty lines and lines with a single space
$FilteredContent = $Content | Where-Object { $_ -notmatch "^\s{0,1}$" }

# Save the cleaned content to the output file
$FilteredContent | Set-Content -Path $OutputFile

Write-Output "Processing complete. Cleaned file saved to: $OutputFile"
