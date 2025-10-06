
# # Define connection string

# #  Write-Output "First argument: $($args[0])"


# $connectionString = "Data Source=cqz02f6h9c.database.windows.net;Initial Catalog=TSGMaster;Persist Security Info=True;User ID=TSGTestdev;Password=CA09876ca; MultipleActiveResultSets=true; Connection Timeout=120"

# # Create SQL connection
# $connection = new-object System.Data.SqlClient.SqlConnection
# $connection.ConnectionString = $connectionString
# $connection.Open()

# try {
    
# # Create SQL command
# $command = $connection.CreateCommand()
# $command.CommandText = "SELECT p.UID, p.perMockUser from Permissions p where p.UID = 175"

# # Execute command
# $reader = $command.ExecuteReader()

# # Display results
# while ($reader.Read()) {
#     Write-Output "$($reader['UID']) - $($reader['perMockUser'])"
# }

# write-output hello world

# # Clean up
# $reader.Close()
# }
# catch {
#     <#Do this if a terminating exception happens#>
# }
# finally {
#     <#Do this after the try block regardless of whether an exception occurred or not#>
#     $connection.Close()
# }

# $connection.Close()



# # SELECT COLUMN_NAME
# # FROM INFORMATION_SCHEMA.COLUMNS
# # WHERE TABLE_NAME = 'YourTableName';





# Define connection string

#  Write-Output "First argument: $($args[0])"


$connectionString = "Data Source=cqz02f6h9c.database.windows.net;Initial Catalog=TSGMaster;Persist Security Info=True;User ID=TSGTestdev;Password=CA09876ca; MultipleActiveResultSets=true; Connection Timeout=120"

# Create SQL connection
$connection = new-object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString
$connection.Open()

try {
    
    # Create SQL command
    $command = $connection.CreateCommand()
    $command.CommandText = "
        SELECT COLUMN_NAME
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_NAME = 'TSGMaster.dbo.Permissions'
    "

    # Execute command
    $reader = $command.ExecuteReader()

    # Display results
    while ($reader.Read()) {
        Write-Output "$($reader['COLUMN_NAME'])"
    }

    write-output hello world

    # Clean up
    $reader.Close()
}
catch {
    <#Do this if a terminating exception happens#>
    write-output "exceptio"
}
finally {
    <#Do this after the try block regardless of whether an exception occurred or not#>
    $connection.Close()
}

$connection.Close()



