# azurerm_cosmosdb_mongo_role_definition

Manages a Cosmos DB Mongo Role Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **cosmos_mongo_database_id** | string | True | -  |  -  | The resource ID of the Mongo DB. Changing this forces a new resource to be created. | 
| **role_name** | string | True | -  |  -  | The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created. | 
| **inherited_role_names** | list | False | -  |  -  | A list of Mongo Roles which are inherited to the Mongo Role Definition. | 
| **privilege** | block | False | -  |  -  | A `privilege` block. | 

