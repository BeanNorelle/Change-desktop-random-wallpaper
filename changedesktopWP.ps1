Function Set-WallPaper($Value)
{
    Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
    rundll32.exe user32.dll, UpdatePerUserSystemParameters
    $Files = Get-ChildItem -Path C:\Users\beans\OneDrive\wallpaper\*.jpg -Recurse
     $Sample = $Files | Get-Random
     echo "$sample"
}


Set-WallPaper -Value $sample

