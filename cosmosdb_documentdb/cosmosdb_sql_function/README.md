# azurerm_cosmosdb_sql_function

Manages an SQL User Defined Function.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created. | 
| **container_id** | string | True | -  |  -  | The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created. | 
| **body** | string | True | -  |  -  | Body of the User Defined Function. | 

