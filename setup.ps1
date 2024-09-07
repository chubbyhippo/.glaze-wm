$url = "https://raw.githubusercontent.com/chubbyhippo/.glaze-wm/main/config.yaml"
$destinationPath = "$HOME\.glaze-wm\"
if(!(Test-Path $destinationPath)) {
    New-Item -ItemType Directory -Force -Path $destinationPath
}

$fullPath = $destinationPath + "config.yaml"
Invoke-WebRequest -Uri $url -OutFile $fullPath
