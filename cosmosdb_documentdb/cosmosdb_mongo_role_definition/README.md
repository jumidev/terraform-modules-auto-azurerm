# azurerm_cosmosdb_mongo_role_definition



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_mongo_role_definition"   
}

inputs = {
   # cosmos_mongo_database_id → set in component_inputs
   role_name = "The user-friendly name for the Mongo Role Definition..."   
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
| **role_name** | string |  The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **inherited_role_names** | list |  A list of Mongo Roles which are inherited to the Mongo Role Definition. ~> **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`. | 
| **privilege** | [block](#privilege-block-structure) |  A `privilege` block. | 

### `resource` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `collection_name` | string | No | - | The name of the Mongo DB Collection that the Role Definition is applied. |
| `db_name` | string | No | - | The name of the Mongo DB that the Role Definition is applied. |

### `privilege` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `actions` | list | Yes | - | A list of actions that are allowed. |
| `resource` | [block](#resource-block-structure) | Yes | - | A 'resource' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **db_name** | string | No  | The name of the Mongo DB that the Role Definition is applied. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Cosmos DB Mongo Role Definition. | 

Additionally, all variables are provided as outputs.
