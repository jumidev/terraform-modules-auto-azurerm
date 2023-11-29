# azurerm_cosmosdb_sql_trigger

Manages an SQL Trigger.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created. | 
| **container_id** | string | True | -  |  -  | The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created. | 
| **body** | string | True | -  |  -  | Body of the Trigger. | 
| **operation** | string | True | -  |  `All`, `Create`, `Update`, `Delete`, `Replace`  | The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`. | 
| **type** | string | True | -  |  `Pre`, `Post`  | Type of the Trigger. Possible values are `Pre` and `Post`. | 

