if (Test-Path -Path "G:\")
{
    $Archive = Get-Item "C:\Users\KaileeBrown\Documents\Outlook Files\archive.pst"
    $BackUp = Get-Item "G:\archive.pst"
    $logfilename = "C:\Users\KaileeBrown\Documents\Outlook Files\robolog$(get-date -format 'MM-d-yyyy').log"

    #size different
    if ($Archive.Length -ne $Backup.Length)
    {
        robocopy "C:\Users\KaileeBrown\Documents\Outlook Files" "G:\" /copy:DAT /ZB /R:1 /W:1 /V /TEE /MT:16 /LOG+:$logfilename
    }
}
