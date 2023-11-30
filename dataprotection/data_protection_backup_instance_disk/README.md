# azurerm_data_protection_backup_instance_disk

Manages a Backup Instance to back up Disk.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dataprotection/data_protection_backup_instance_disk" 
}

inputs = {
   name = "name of data_protection_backup_instance_disk" 
   location = "${location}" 
   vault_id = "vault_id of data_protection_backup_instance_disk" 
   disk_id = "disk_id of data_protection_backup_instance_disk" 
   snapshot_resource_group_name = "snapshot_resource_group_name of data_protection_backup_instance_disk" 
   backup_policy_id = "backup_policy_id of data_protection_backup_instance_disk" 
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
| **var.name** | string |  The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **var.location** | string |  The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **var.vault_id** | string |  The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **var.disk_id** | string |  The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **var.snapshot_resource_group_name** | string |  The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created. | 
| **var.backup_policy_id** | string |  The ID of the Backup Policy. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Instance Disk. | 

Additionally, all variables are provided as outputs.
