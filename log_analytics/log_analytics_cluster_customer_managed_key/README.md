# azurerm_log_analytics_cluster_customer_managed_key

Manages a Log Analytics Cluster Customer Managed Key.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **key_vault_key_id** | string | True | -  |  -  | The ID of the Key Vault Key to use for encryption. | 
| **log_analytics_cluster_id** | string | True | -  |  -  | The ID of the Log Analytics Cluster. Changing this forces a new Log Analytics Cluster Customer Managed Key to be created. | 

