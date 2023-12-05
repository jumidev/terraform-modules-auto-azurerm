# azurerm_data_protection_backup_policy_blob_storage

Manages a Backup Policy Blob Storage.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dataprotection/data_protection_backup_policy_blob_storage"   
}

inputs = {
   name = "name of data_protection_backup_policy_blob_storage"   
   vault_id = "vault_id of data_protection_backup_policy_blob_storage"   
   retention_duration = "retention_duration of data_protection_backup_policy_blob_storage"   
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
| **name** | string |  The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created. | 
| **vault_id** | string |  The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created. | 
| **retention_duration** | string |  Duration of deletion after given timespan. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Policy Blob Storage. | 

Additionally, all variables are provided as outputs.
