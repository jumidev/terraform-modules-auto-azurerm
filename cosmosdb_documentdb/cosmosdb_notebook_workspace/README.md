# azurerm_cosmosdb_notebook_workspace

Manages an SQL Notebook Workspace.!> **Note:** CosmosDb Notebook Workspace is now Deprecated - as such the `azurerm_cosmosdb_notebook_workspace` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.~> **NOTE:** CosmosDb Notebook (the feature itself) is not deprecated and will return: <https://learn.microsoft.com/en-us/azure/cosmos-db/notebooks-faq>.~> **NOTE:** However, CosmosDb Notebook feature no longer uses the permanent notebook workspace being referred to the public surface in the RP (have since moved to temporary notebooks workspaces which are short-lived <1 hour).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_notebook_workspace" 
}

inputs = {
   name = "name of cosmosdb_notebook_workspace" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_notebook_workspace" 
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
| **var.name** | string |  The name which should be used for this SQL Notebook Workspace. Possible value is `default`. Changing this forces a new SQL Notebook Workspace to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the SQL Notebook Workspace should exist. Changing this forces a new SQL Notebook Workspace to be created. | 
| **var.account_name** | string |  The name of the Cosmos DB Account to create the SQL Notebook Workspace within. Changing this forces a new SQL Notebook Workspace to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Notebook Workspace. | 
| **server_endpoint** | string | No  | Specifies the endpoint of Notebook server. | 

Additionally, all variables are provided as outputs.
