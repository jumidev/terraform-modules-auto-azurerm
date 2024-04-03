# azurerm_cosmosdb_mongo_user_definition



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_mongo_user_definition"   
}
inputs = {
   # cosmos_mongo_database_id → set in component_inputs
   username = "The username for the Mongo User Definition"   
   password = "The password for the Mongo User Definition"   
}
component_inputs = {
   cosmos_mongo_database_id = "path/to/cosmosdb_mongo_database_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **cosmos_mongo_database_id** | string |  The resource ID of the Mongo DB. Changing this forces a new resource to be created. | 
| **username** | string |  The username for the Mongo User Definition. Changing this forces a new resource to be created. | 
| **password** | string |  The password for the Mongo User Definition. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **inherited_role_names** | list |  A list of Mongo Roles that are inherited to the Mongo User Definition. ~> **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **inherited_role_names** | list | No  | A list of Mongo Roles that are inherited to the Mongo User Definition. ~> **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Cosmos DB Mongo User Definition. | 

Additionally, all variables are provided as outputs.
