function Get-InnermostHashtableValue {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [System.Collections.Hashtable]$hashtable
    )

    if ($hashtable.Count -eq 0) {
        return $null
    }

    foreach ($key in $hashtable.Keys) {
        if ($hashtable[$key] -is [System.Collections.Hashtable]) {
            return Get-InnermostHashtableValue $hashtable[$key]
        } 
    }
    return $hashtable
}


$inputHash = @{'x'=@{'y'=@{'z'='a'}}}
$value = Get-InnermostHashtableValue $inputHash
$value