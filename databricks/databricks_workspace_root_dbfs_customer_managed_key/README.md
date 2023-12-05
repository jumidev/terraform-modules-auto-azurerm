# azurerm_databricks_workspace_root_dbfs_customer_managed_key

Manages a Customer Managed Key for the Databricks Workspaces root Databricks File System(DBFS)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "databricks/databricks_workspace_root_dbfs_customer_managed_key"   
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
| **workspace_id** | string |  The resource ID of the Databricks Workspace. | 
| **key_vault_key_id** | string |  The resource ID of the Key Vault Key to be used. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databricks Workspace. | 

Additionally, all variables are provided as outputs.
