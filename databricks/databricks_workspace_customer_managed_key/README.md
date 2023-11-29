# azurerm_databricks_workspace_customer_managed_key

Manages a Customer Managed Key for a Databricks Workspace root DBFS!>**IMPORTANT:** This resource has been deprecated and will be removed from the 4.0 Azure provider. Please use the `azurerm_databricks_workspace_root_dbfs_customer_managed_key` resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **workspace_id** | string | True | -  |  -  | The ID of the Databricks Workspace.. | 
| **key_vault_key_id** | string | True | -  |  -  | The ID of the Key Vault. | 

