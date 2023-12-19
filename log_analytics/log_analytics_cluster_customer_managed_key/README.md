# azurerm_log_analytics_cluster_customer_managed_key

Manages a Log Analytics Cluster Customer Managed Key.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_cluster_customer_managed_key"   
}

inputs = {
   # key_vault_key_id → set in component_inputs
   # log_analytics_cluster_id → set in component_inputs
}

component_inputs = {
   key_vault_key_id = "path/to/key_vault_key_component:id"   
   log_analytics_cluster_id = "path/to/log_analytics_cluster_component:id"   
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
| **key_vault_key_id** | string |  The ID of the Key Vault Key to use for encryption. | 
| **log_analytics_cluster_id** | string |  The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Cluster Customer Managed Key. | 

Additionally, all variables are provided as outputs.
