# azurerm_log_analytics_cluster_customer_managed_key

Manages a Log Analytics Cluster Customer Managed Key.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.key_vault_key_id** | string | True | The ID of the Key Vault Key to use for encryption. | 
| **var.log_analytics_cluster_id** | string | True | The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **key_vault_key_id** | string  | - | 
| **log_analytics_cluster_id** | string  | - | 
| **id** | string  | The ID of the Log Analytics Cluster Customer Managed Key. | 