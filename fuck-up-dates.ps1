# Путь к целевой папке
# Destination path
$path = "C:\YOUR\PATH\HERE"

# Новые даты создания и изменения (идут в формате YYYY-MM-DD hh-mm-ss)
# New dates of creation and last write (goes in format YYYY-MM-DD hh-mm-ss)
$newCreationDate = Get-Date "2023-12-25 22:36:28"
$newModifiedDate = Get-Date "2023-12-29 00:23:03"

# Получаем список файлов в папке
# Getting the file list in specified path
$files = Get-ChildItem -Path $path

# Устанавливаем новые даты на каждом файле
# Specifying the new dates for each file
foreach ($file in $files) {
    $file.CreationTime = $newCreationDate
    $file.LastWriteTime = $newModifiedDate
}

Write-Host "Creation and Last Write times were changed successfully."
