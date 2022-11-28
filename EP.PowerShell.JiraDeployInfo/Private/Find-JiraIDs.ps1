function Find-JiraIDs {
    param (
        $message
    )
    $pattern = "(SMART|OPS)-\d*"
    $values = [regex]::Matches($message, $pattern) | Select-Object value 
    Write-Debug ("[JIRA IDs] " + $values)
    $values
}
