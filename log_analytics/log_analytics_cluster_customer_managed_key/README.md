# azurerm_log_analytics_cluster_customer_managed_key

Manages a Log Analytics Cluster Customer Managed Key.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_cluster_customer_managed_key" 
}

inputs = {
   key_vault_key_id = "key_vault_key_id of log_analytics_cluster_customer_managed_key" 
   log_analytics_cluster_id = "log_analytics_cluster_id of log_analytics_cluster_customer_managed_key" 
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
| **var.key_vault_key_id** | string |  The ID of the Key Vault Key to use for encryption. | 
| **var.log_analytics_cluster_id** | string |  The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Cluster Customer Managed Key. | 

Additionally, all variables are provided as outputs.
