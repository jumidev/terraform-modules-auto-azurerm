# azurerm_cosmosdb_sql_role_definition

Manages a Cosmos DB SQL Role Definition.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_role_definition" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_sql_role_definition" 
   assignable_scopes = "assignable_scopes of cosmosdb_sql_role_definition" 
   name = "name of cosmosdb_sql_role_definition" 
   permissions = {
      example_permissions = {
         data_actions = "..."   
      }
  
   }
 
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
| **var.resource_group_name** | string |  The name of the Resource Group in which the Cosmos DB SQL Role Definition is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string |  The name of the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **var.assignable_scopes** | list |  A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition. It will allow application of this Cosmos DB SQL Role Definition on the entire Database Account or any underlying Database/Collection. Scopes higher than Database Account are not enforceable as assignable scopes. | 
| **var.name** | string |  An user-friendly name for the Cosmos DB SQL Role Definition which must be unique for the Database Account. | 
| **var.permissions** | [block](#permissions-block-structure) |  A `permissions` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.role_definition_id** | string |  -  |  -  |  The GUID as the name of the Cosmos DB SQL Role Definition - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.type** | string |  `CustomRole`  |  `BuiltInRole`, `CustomRole`  |  The type of the Cosmos DB SQL Role Definition. Possible values are `BuiltInRole` and `CustomRole`. Defaults to `CustomRole`. Changing this forces a new resource to be created. | 

### `permissions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_actions` | list | Yes | - | A list of data actions that are allowed for the Cosmos DB SQL Role Definition. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB SQL Role Definition. | 

Additionally, all variables are provided as outputs.
