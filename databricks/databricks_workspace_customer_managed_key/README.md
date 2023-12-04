# azurerm_databricks_workspace_customer_managed_key

Manages a Customer Managed Key for a Databricks Workspace root DBFS!>**IMPORTANT:** This resource has been deprecated and will be removed from the 4.0 Azure provider. Please use the `azurerm_databricks_workspace_root_dbfs_customer_managed_key` resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databricks/databricks_workspace_customer_managed_key" 
}

inputs = {
   # workspace_id → set in tfstate_inputs
   # key_vault_key_id → set in tfstate_inputs
}

tfstate_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id" 
   key_vault_key_id = "path/to/key_vault_key_component:id" 
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
| **workspace_id** | string |  The ID of the Databricks Workspace.. | 
| **key_vault_key_id** | string |  The ID of the Key Vault. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databricks Workspace. | 

Additionally, all variables are provided as outputs.
