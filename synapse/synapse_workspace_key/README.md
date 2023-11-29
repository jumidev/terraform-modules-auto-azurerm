# azurerm_synapse_workspace_key

Manages Synapse Workspace keys-> **Note:** Keys that are actively protecting a workspace cannot be deleted. When the keys resource is deleted, if the key is inactive it will be deleted, if it is active it will not be deleted.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.customer_managed_key_name** | string | True | -  |  -  | Specifies the name of the workspace key. Should match the name of the key in the synapse workspace. | 
| **var.customer_managed_key_versionless_id** | string | False | -  |  -  | The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption | 
| **var.synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace where the encryption key should be configured. | 
| **var.active** | string | True | -  |  -  | Specifies if the workspace should be encrypted with this key. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **customer_managed_key_name** | string  | - | 
| **customer_managed_key_versionless_id** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **active** | string  | - | 