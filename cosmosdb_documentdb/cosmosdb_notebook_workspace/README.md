# azurerm_cosmosdb_notebook_workspace



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_notebook_workspace"   
}
inputs = {
   name = "The name which should be used for this SQL Notebook Workspace..."   
   resource_group_name = "${resource_group}"   
   # account_name → set in component_inputs
}
component_inputs = {
   account_name = "path/to/cosmosdb_account_component:name"   
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
| **name** | string |  The name which should be used for this SQL Notebook Workspace. Possible value is `default`. Changing this forces a new SQL Notebook Workspace to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the SQL Notebook Workspace should exist. Changing this forces a new SQL Notebook Workspace to be created. | 
| **account_name** | string |  The name of the Cosmos DB Account to create the SQL Notebook Workspace within. Changing this forces a new SQL Notebook Workspace to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **account_name** | string | No  | The name of the Cosmos DB Account to create the SQL Notebook Workspace within. Changing this forces a new SQL Notebook Workspace to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SQL Notebook Workspace. | 
| **server_endpoint** | string | No  | Specifies the endpoint of Notebook server. | 

Additionally, all variables are provided as outputs.
