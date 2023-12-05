# azurerm_data_protection_backup_instance_blob_storage

Manages a Backup Instance Blob Storage.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dataprotection/data_protection_backup_instance_blob_storage"   
}

inputs = {
   name = "name of data_protection_backup_instance_blob_storage"   
   location = "${location}"   
   vault_id = "vault_id of data_protection_backup_instance_blob_storage"   
   # storage_account_id → set in tfstate_inputs
   backup_policy_id = "backup_policy_id of data_protection_backup_instance_blob_storage"   
}

tfstate_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
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
| **name** | string |  The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **location** | string |  The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **vault_id** | string |  The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **storage_account_id** | string |  The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **backup_policy_id** | string |  The ID of the Backup Policy. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Instance Blob Storage. | 

Additionally, all variables are provided as outputs.
