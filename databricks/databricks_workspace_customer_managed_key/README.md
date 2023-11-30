# azurerm_databricks_workspace_customer_managed_key

Manages a Customer Managed Key for a Databricks Workspace root DBFS!>**IMPORTANT:** This resource has been deprecated and will be removed from the 4.0 Azure provider. Please use the `azurerm_databricks_workspace_root_dbfs_customer_managed_key` resource instead.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.workspace_id** | string | True | The ID of the Databricks Workspace.. | 
| **var.key_vault_key_id** | string | True | The ID of the Key Vault. | 



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
   path = "databricks/databricks_workspace_customer_managed_key" 
}

inputs = {
   workspace_id = "workspace_id of databricks_workspace_customer_managed_key" 
   key_vault_key_id = "key_vault_key_id of databricks_workspace_customer_managed_key" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```