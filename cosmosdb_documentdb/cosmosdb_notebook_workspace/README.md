# azurerm_cosmosdb_notebook_workspace

Manages an SQL Notebook Workspace.!> **Note:** CosmosDb Notebook Workspace is now Deprecated - as such the `azurerm_cosmosdb_notebook_workspace` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.~> **NOTE:** CosmosDb Notebook (the feature itself) is not deprecated and will return: <https://learn.microsoft.com/en-us/azure/cosmos-db/notebooks-faq>.~> **NOTE:** However, CosmosDb Notebook feature no longer uses the permanent notebook workspace being referred to the public surface in the RP (have since moved to temporary notebooks workspaces which are short-lived <1 hour).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this SQL Notebook Workspace. Possible value is `default`. Changing this forces a new SQL Notebook Workspace to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the SQL Notebook Workspace should exist. Changing this forces a new SQL Notebook Workspace to be created. | 
| **account_name** | string | True | -  |  -  | The name of the Cosmos DB Account to create the SQL Notebook Workspace within. Changing this forces a new SQL Notebook Workspace to be created. | 

