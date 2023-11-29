# azurerm_cosmosdb_sql_role_definition

Manages a Cosmos DB SQL Role Definition.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Cosmos DB SQL Role Definition is created. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **assignable_scopes** | list | True | -  |  -  | A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition. It will allow application of this Cosmos DB SQL Role Definition on the entire Database Account or any underlying Database/Collection. Scopes higher than Database Account are not enforceable as assignable scopes. | 
| **name** | string | True | -  |  -  | An user-friendly name for the Cosmos DB SQL Role Definition which must be unique for the Database Account. | 
| **permissions** | block | True | -  |  -  | A `permissions` block. | 
| **role_definition_id** | string | False | -  |  -  | The GUID as the name of the Cosmos DB SQL Role Definition - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **type** | string | False | `CustomRole`  |  `BuiltInRole`, `CustomRole`  | The type of the Cosmos DB SQL Role Definition. Possible values are `BuiltInRole` and `CustomRole`. Defaults to `CustomRole`. Changing this forces a new resource to be created. | 

