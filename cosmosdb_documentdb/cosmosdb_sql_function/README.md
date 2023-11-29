# azurerm_cosmosdb_sql_function

Manages an SQL User Defined Function.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created. | 
| **var.container_id** | string | True | The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created. | 
| **var.body** | string | True | Body of the User Defined Function. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **container_id** | string  | - | 
| **body** | string  | - | 
| **id** | string  | The ID of the SQL User Defined Function. | 