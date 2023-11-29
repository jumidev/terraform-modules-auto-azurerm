# azurerm_cosmosdb_sql_stored_procedure

Manages a SQL Stored Procedure within a Cosmos DB Account SQL Database.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created. | 
| **container_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created. | 
| **body** | string | True | -  |  -  | The body of the stored procedure. | 

