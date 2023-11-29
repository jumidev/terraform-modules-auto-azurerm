# azurerm_cosmosdb_sql_trigger

Manages an SQL Trigger.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created. | 
| **var.container_id** | string | True | -  |  The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created. | 
| **var.body** | string | True | -  |  Body of the Trigger. | 
| **var.operation** | string | True | `All`, `Create`, `Update`, `Delete`, `Replace`  |  The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`. | 
| **var.type** | string | True | `Pre`, `Post`  |  Type of the Trigger. Possible values are `Pre` and `Post`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **container_id** | string  | - | 
| **body** | string  | - | 
| **operation** | string  | - | 
| **type** | string  | - | 
| **id** | string  | The ID of the SQL Trigger. | 