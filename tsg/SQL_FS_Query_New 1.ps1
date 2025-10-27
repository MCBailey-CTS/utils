
# Define connection string




$connectionString = "Data Source=cqz02f6h9c.database.windows.net;Initial Catalog=TSGMaster;Persist Security Info=True;User ID=TSGTestdev;Password=CA09876ca; MultipleActiveResultSets=true; Connection Timeout=120"

# Create SQL connection
$connection = New-Object System.Data.SqlClient.SqlConnection
$connection.ConnectionString = $connectionString
$connection.Open()

# Create SQL command
$command = $connection.CreateCommand()
$command.CommandText = "SELECT p.UID, p.perMockUser from Permissions p where p.UID = 175"

# Execute command
$reader = $command.ExecuteReader()

# Display results
while ($reader.Read()) {
    Write-Output "$($reader['UID']) - $($reader['perMockUser'])"
}

# Clean up
$reader.Close()
$connection.Close()


