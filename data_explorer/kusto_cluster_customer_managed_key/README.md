# azurerm_kusto_cluster_customer_managed_key

Manages a Customer Managed Key for a Kusto Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **cluster_id** | string | True | -  |  -  | The ID of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **key_vault_id** | string | True | -  |  -  | The ID of the Key Vault. | 
| **key_name** | string | True | -  |  -  | The name of Key Vault Key. | 
| **key_version** | string | False | -  |  -  | The version of Key Vault Key. | 
| **user_identity** | string | False | -  |  -  | The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used. | 

