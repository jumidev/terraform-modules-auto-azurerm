# azurerm_backup_protected_vm

Manages Azure Backup for an Azure VM

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **source_vm_id** | string | False | -  |  -  | Specifies the ID of the VM to backup. Changing this forces a new resource to be created. | 
| **backup_policy_id** | string | False | -  |  -  | Specifies the id of the backup policy to use. Required in creation or when `protection_stopped` is not specified. | 
| **exclude_disk_luns** | list | False | -  |  -  | A list of Disks' Logical Unit Numbers(LUN) to be excluded for VM Protection. | 
| **include_disk_luns** | list | False | -  |  -  | A list of Disks' Logical Unit Numbers(LUN) to be included for VM Protection. | 
| **protection_state** | string | False | -  |  `Invalid`, `IRPending`, `Protected`, `ProtectionStopped`, `ProtectionError`, `ProtectionPaused`  | Specifies Protection state of the backup. Possible values are `Invalid`, `IRPending`, `Protected`, `ProtectionStopped`, `ProtectionError` and `ProtectionPaused`. | 

