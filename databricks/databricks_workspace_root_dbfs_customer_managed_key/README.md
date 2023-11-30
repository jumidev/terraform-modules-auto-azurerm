# azurerm_databricks_workspace_root_dbfs_customer_managed_key

Manages a Customer Managed Key for the Databricks Workspaces root Databricks File System(DBFS)

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.workspace_id** | string | True | The resource ID of the Databricks Workspace. | 
| **var.key_vault_key_id** | string | True | The resource ID of the Key Vault Key to be used. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **workspace_id** | string  | - | 
| **key_vault_key_id** | string  | - | 
| **id** | string  | The ID of the Databricks Workspace. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databricks/databricks_workspace_root_dbfs_customer_managed_key" 
}

inputs = {
   workspace_id = "workspace_id of databricks_workspace_root_dbfs_customer_managed_key" 
   key_vault_key_id = "key_vault_key_id of databricks_workspace_root_dbfs_customer_managed_key" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```