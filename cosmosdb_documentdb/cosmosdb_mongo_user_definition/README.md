# azurerm_cosmosdb_mongo_user_definition

Manages a Cosmos DB Mongo User Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **cosmos_mongo_database_id** | string | True | -  |  -  | The resource ID of the Mongo DB. Changing this forces a new resource to be created. | 
| **username** | string | True | -  |  -  | The username for the Mongo User Definition. Changing this forces a new resource to be created. | 
| **password** | string | True | -  |  -  | The password for the Mongo User Definition. | 
| **inherited_role_names** | list | False | -  |  -  | A list of Mongo Roles that are inherited to the Mongo User Definition. | 

