# azurerm_eventhub_namespace_customer_managed_key

Manages a Customer Managed Key for a EventHub Namespace.!> **Note:** In 2.x versions of the Azure Provider during deletion this resource will **delete and recreate the parent EventHub Namespace which may involve data loss** as it's not possible to remove the Customer Managed Key from the EventHub Namespace once it's been added. Version 3.0 of the Azure Provider will change this so that the Delete operation is a noop, requiring the parent EventHub Namespace is deleted/recreated to remove the Customer Managed Key.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub_namespace_customer_managed_key" 
}

inputs = {
   eventhub_namespace_id = "eventhub_namespace_id of eventhub_namespace_customer_managed_key" 
   key_vault_key_ids = "key_vault_key_ids of eventhub_namespace_customer_managed_key" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.eventhub_namespace_id** | string | True | The ID of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **var.key_vault_key_ids** | string | True | The list of keys of Key Vault. | 
| **var.infrastructure_encryption_enabled** | bool | False | Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created. | 
| **var.user_assigned_identity_id** | string | False | The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the EventHub Namespace. | 

Additionally, all variables are provided as outputs.
