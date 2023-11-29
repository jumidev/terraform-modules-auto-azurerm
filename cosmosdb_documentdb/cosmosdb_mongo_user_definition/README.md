# azurerm_cosmosdb_mongo_user_definition

Manages a Cosmos DB Mongo User Definition.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.cosmos_mongo_database_id** | string | True | -  |  -  | The resource ID of the Mongo DB. Changing this forces a new resource to be created. | 
| **var.username** | string | True | -  |  -  | The username for the Mongo User Definition. Changing this forces a new resource to be created. | 
| **var.password** | string | True | -  |  -  | The password for the Mongo User Definition. | 
| **var.inherited_role_names** | list | False | -  |  -  | A list of Mongo Roles that are inherited to the Mongo User Definition. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cosmos_mongo_database_id** | string  | - | 
| **username** | string  | - | 
| **password** | string  | - | 
| **inherited_role_names** | list  | - | 
| **id** | string  | The ID of the Cosmos DB Mongo User Definition. | 