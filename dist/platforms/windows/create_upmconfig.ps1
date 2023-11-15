$token = $env:GIT_PRIVATE_TOKEN
if ([string]::IsNullOrWhiteSpace($token)) {
    Write-Host "Token not found in env. Please set the TOKEN environment variable."
    exit 1
}
$filePath = Join-Path $env:USERPROFILE ".upmconfig.toml"
try {
$content = @"
[npmAuth."https://npm.pkg.github.com/@rrealmdev"]
token = "$token"
email = "arkadiusz.mirecki@everyrealm.com"
alwaysAuth = true
"@
    $utf8NoBomEncoding = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($filePath, $content, $utf8NoBomEncoding)
    Write-Host "Unity .upmconfig.toml file created successfully at: $filePath"
} catch {
    Write-Host "Failed to create Unity .upmconfig.toml file. Error: $($_.Exception.Message)"
    exit 1
}
