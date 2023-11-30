# azurerm_backup_protected_vm

Manages Azure Backup for an Azure VM

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | -  |  Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **var.source_vm_id** | string | False | -  |  Specifies the ID of the VM to backup. Changing this forces a new resource to be created. | 
| **var.backup_policy_id** | string | False | -  |  Specifies the id of the backup policy to use. Required in creation or when `protection_stopped` is not specified. | 
| **var.exclude_disk_luns** | list | False | -  |  A list of Disks' Logical Unit Numbers(LUN) to be excluded for VM Protection. | 
| **var.include_disk_luns** | list | False | -  |  A list of Disks' Logical Unit Numbers(LUN) to be included for VM Protection. | 
| **var.protection_state** | string | False | `Invalid`, `IRPending`, `Protected`, `ProtectionStopped`, `ProtectionError`, `ProtectionPaused`  |  Specifies Protection state of the backup. Possible values are `Invalid`, `IRPending`, `Protected`, `ProtectionStopped`, `ProtectionError` and `ProtectionPaused`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **source_vm_id** | string  | - | 
| **backup_policy_id** | string  | - | 
| **exclude_disk_luns** | list  | - | 
| **include_disk_luns** | list  | - | 
| **protection_state** | string  | - | 
| **id** | string  | The ID of the Backup Protected Virtual Machine. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_protected_vm" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_protected_vm" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```