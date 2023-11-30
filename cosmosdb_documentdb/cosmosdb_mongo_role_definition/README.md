# azurerm_cosmosdb_mongo_role_definition

Manages a Cosmos DB Mongo Role Definition.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_mongo_role_definition" 
}

inputs = {
   cosmos_mongo_database_id = "cosmos_mongo_database_id of cosmosdb_mongo_role_definition" 
   role_name = "role_name of cosmosdb_mongo_role_definition" 
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
| **var.cosmos_mongo_database_id** | string |  The resource ID of the Mongo DB. Changing this forces a new resource to be created. | 
| **var.role_name** | string |  The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.inherited_role_names** | list |  A list of Mongo Roles which are inherited to the Mongo Role Definition. | 
| **var.privilege** | block |  A `privilege` block. | 

### `privilege` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `actions` | list | Yes | - | A list of actions that are allowed. |
| `resource` | block | Yes | - | A 'resource' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB Mongo Role Definition. | 

Additionally, all variables are provided as outputs.
