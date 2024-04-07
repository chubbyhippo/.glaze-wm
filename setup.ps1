# install glazewm
$glazewmUrl = "https://github.com/glzr-io/glazewm/releases/download/v2.1.1/GlazeWM_x64_2.1.1.exe"
$installedPath = "$Home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\glazewm.exe"
Invoke-WebRequest -Uri $glazewmUrl -OutFile $installedPath

$url = "https://raw.githubusercontent.com/chubbyhippo/.glaze-wm/main/config.yaml"
$destinationPath = "$HOME\.glaze-wm\"
if(!(Test-Path $destinationPath)) {
    New-Item -ItemType Directory -Force -Path $destinationPath
}

$fullPath = $destinationPath + "config.yaml"
Invoke-WebRequest -Uri $url -OutFile $fullPath
