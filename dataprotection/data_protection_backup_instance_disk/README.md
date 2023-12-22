# azurerm_data_protection_backup_instance_disk

Manages a Backup Instance to back up Disk.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dataprotection/data_protection_backup_instance_disk"   
}

inputs = {
   name = "The name which should be used for this Backup Instance Disk..."   
   location = "${location}"   
   # vault_id → set in component_inputs
   # disk_id → set in component_inputs
   snapshot_resource_group_name = "The name of the Resource Group where snapshots are stored..."   
   backup_policy_id = "The ID of the Backup Policy"   
}

component_inputs = {
   vault_id = "path/to/key_vault_component:id"   
   disk_id = "path/to/managed_disk_component:id"   
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
| **name** | string |  The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **location** | string |  The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **vault_id** | string |  The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created. | 
| **disk_id** | string |  The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created. | 
| **snapshot_resource_group_name** | string |  The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created. | 
| **backup_policy_id** | string |  The ID of the Backup Policy. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Instance Disk. | 

Additionally, all variables are provided as outputs.
