param(
    [Parameter(HelpMessage = "Please provide id")]
    [alias('i')][string]$id = 0,

    [Parameter(HelpMessage = "Please provide name")]
    [alias('n')][string]$name = "",

    [Parameter(HelpMessage = "Please provide email")]
    [alias('e')][string]$email = ""

    # get mock user
    # set mock user
    # get company code
    # set company code
)

$connectionString = "
    Data Source=cqz02f6h9c.database.windows.net;
    Initial Catalog=TSGMaster;
    Persist Security Info=True;
    User ID=TSGTestdev;
    Password=CA09876ca;
    MultipleActiveResultSets=true;
    Connection Timeout=120"

# Create SQL connection
$connection = new-object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString
$connection.Open()

try {
    
    # Create SQL command
    $command = $connection.CreateCommand()

    if ( $id -gt 0 ) {
        $command.CommandText = "
        SELECT companyid, TSGCompanyAbbrev 
        FROM permissions
        JOIN tsgcompany ON tsgcompanyid = companyid 
        WHERE uid = $id
    "
    }
    elseif ($name -ne "" ) {
        $command.CommandText = "
        SELECT companyid, TSGCompanyAbbrev 
        FROM permissions
        JOIN tsgcompany ON tsgcompanyid = companyid 
        WHERE pername like '%$name%'
        "
    }
    elseif ($email -ne "" ) {
        $command.CommandText = "
        SELECT companyid, TSGCompanyAbbrev 
        FROM permissions
        JOIN tsgcompany ON tsgcompanyid = companyid 
        WHERE emailaddress like '%$email%'
    "
    }
    else {
        Write-Output "You did not properly execute this command."
        exit 1
    }

    # # Execute command
    $reader = $command.ExecuteReader()

    # Display results
    while ($reader.Read()) {
        Write-Output "$($reader['companyid']) $($reader['TSGCompanyAbbrev'])"
    }
}
catch {
    <#Do this if a terminating exception happens#>
    write-output "An error occurred: $($_.Exception.Message)"
    Write-Output $($_.InvocationInfo.ScriptLineNumber)
}
finally {
    <#Do this after the try block regardless of whether an exception occurred or not#>
    $connection.Close()
}




