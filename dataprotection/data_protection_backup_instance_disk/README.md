# azurerm_data_protection_backup_instance_disk

Manages a Backup Instance to back up Disk.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **disk_id** | string | True | -  |  -  | The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **snapshot_resource_group_name** | string | True | -  |  -  | The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created. | 
| **backup_policy_id** | string | True | -  |  -  | The ID of the Backup Policy. | 

