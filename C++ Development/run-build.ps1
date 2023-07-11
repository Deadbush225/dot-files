$Answer = "true"

While (-not ($Answer -eq "x")) {
    $Process = Start-Process -FilePath pwsh -ArgumentList ".\build.ps1" -WindowStyle "Maximized" -PassThru
    $Answer = Read-Host "Please enter to [re]start, x to exit: "
    try {
        Stop-Process -Id $Process.Id
    }
    catch {}
}
