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
    $command.CommandText = "
        SELECT companyid, TSGCompanyAbbrev 
        FROM permissions
        JOIN tsgcompany ON tsgcompanyid = companyid 
        WHERE uid = 175
    "

    # # Execute command
    $reader = $command.ExecuteReader()

    # Display results
    while ($reader.Read()) {
        Write-Output "$($reader['companyid']) $($reader['TSGCompanyAbbrev'])"
    }

    # write-output hello world

    # Clean up
    # $reader.Close()

    # write-output "First argument: $($args[0])"
}
catch {
    <#Do this if a terminating exception happens#>
    write-output "An error occurred: $($_.Exception.Message)"
}
finally {
    <#Do this after the try block regardless of whether an exception occurred or not#>
    $connection.Close()
}




