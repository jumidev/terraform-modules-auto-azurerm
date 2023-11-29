# azurerm_data_protection_backup_instance_disk

Manages a Backup Instance to back up Disk.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **var.vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **var.disk_id** | string | True | -  |  -  | The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **var.snapshot_resource_group_name** | string | True | -  |  -  | The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created. | 
| **var.backup_policy_id** | string | True | -  |  -  | The ID of the Backup Policy. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **vault_id** | string  | - | 
| **disk_id** | string  | - | 
| **snapshot_resource_group_name** | string  | - | 
| **backup_policy_id** | string  | - | 
| **id** | string  | The ID of the Backup Instance Disk. | 