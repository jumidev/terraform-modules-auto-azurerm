# azurerm_cosmosdb_sql_stored_procedure

Manages a SQL Stored Procedure within a Cosmos DB Account SQL Database.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created. | 
| **var.container_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created. | 
| **var.body** | string | True | -  |  -  | The body of the stored procedure. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **database_name** | string  | - | 
| **container_name** | string  | - | 
| **body** | string  | - | 
| **id** | string  | The ID of the Cosmos DB SQL Stored Procedure. | 