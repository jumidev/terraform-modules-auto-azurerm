# azurerm_eventhub_namespace_customer_managed_key

Manages a Customer Managed Key for a EventHub Namespace.!> **Note:** In 2.x versions of the Azure Provider during deletion this resource will **delete and recreate the parent EventHub Namespace which may involve data loss** as it's not possible to remove the Customer Managed Key from the EventHub Namespace once it's been added. Version 3.0 of the Azure Provider will change this so that the Delete operation is a noop, requiring the parent EventHub Namespace is deleted/recreated to remove the Customer Managed Key.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.eventhub_namespace_id** | string | True | -  |  -  | The ID of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **var.key_vault_key_ids** | string | True | -  |  -  | The list of keys of Key Vault. | 
| **var.infrastructure_encryption_enabled** | bool | False | -  |  -  | Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created. | 
| **var.user_assigned_identity_id** | string | False | -  |  -  | The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **eventhub_namespace_id** | string  | - | 
| **key_vault_key_ids** | string  | - | 
| **infrastructure_encryption_enabled** | bool  | - | 
| **user_assigned_identity_id** | string  | - | 
| **id** | string  | The ID of the EventHub Namespace. | 