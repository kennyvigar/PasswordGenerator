#ridiculous password generator

function Get-RandomPassword
{
    $length = 16
    $validChars =
    'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-=[]{}|;:,.<>?
'
    $password = -join ((1..$length) | ForEach-Object {
$validChars[(Get-Random -Minimum 0 -Maximum $validChars.Length)] })

    return $password
}

$randomPassword = Get-RandomPassword

Write-Output "Generated Password: $randomPassword"
