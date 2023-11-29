# azurerm_databricks_workspace_root_dbfs_customer_managed_key

Manages a Customer Managed Key for the Databricks Workspaces root Databricks File System(DBFS)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **workspace_id** | string | True | -  |  -  | The resource ID of the Databricks Workspace. | 
| **key_vault_key_id** | string | True | -  |  -  | The resource ID of the Key Vault Key to be used. | 

