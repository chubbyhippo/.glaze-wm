# install glazewm
winget install GlazeWM -h --accept-package-agreements --accept-source-agreements --location "$Home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

$url = "https://raw.githubusercontent.com/chubbyhippo/.glaze-wm/main/config.yaml"
$destinationPath = "$HOME\.glaze-wm\"
if(!(Test-Path $destinationPath)) {
    New-Item -ItemType Directory -Force -Path $destinationPath
}

$fullPath = $destinationPath + "config.yaml"
Invoke-WebRequest -Uri $url -OutFile $fullPath
