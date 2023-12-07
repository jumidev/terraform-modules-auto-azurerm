# azurerm_cosmosdb_mongo_role_definition

Manages a Cosmos DB Mongo Role Definition.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_mongo_role_definition"   
}

inputs = {
   cosmos_mongo_database_id = "The resource ID of the Mongo DB"   
   role_name = "The user-friendly name for the Mongo Role Definition..."   
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
| **inherited_role_names** | list |  A list of Mongo Roles which are inherited to the Mongo Role Definition. | 
| **privilege** | [block](#privilege-block-structure) |  A `privilege` block. | 

### `privilege` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `actions` | list | Yes | - | A list of actions that are allowed. |
| `resource` | [block](#resource-block-structure) | Yes | - | A 'resource' block. |

### `resource` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `collection_name` | string | No | - | The name of the Mongo DB Collection that the Role Definition is applied. |
| `db_name` | string | No | - | The name of the Mongo DB that the Role Definition is applied. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB Mongo Role Definition. | 

Additionally, all variables are provided as outputs.
