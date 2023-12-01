# azurerm_backup_protected_vm

Manages Azure Backup for an Azure VM

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **resource_group_name** | string |  The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string |  Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **source_vm_id** | string |  -  |  Specifies the ID of the VM to backup. Changing this forces a new resource to be created. | 
| **backup_policy_id** | string |  -  |  Specifies the id of the backup policy to use. Required in creation or when `protection_stopped` is not specified. | 
| **exclude_disk_luns** | list |  -  |  A list of Disks' Logical Unit Numbers(LUN) to be excluded for VM Protection. | 
| **include_disk_luns** | list |  -  |  A list of Disks' Logical Unit Numbers(LUN) to be included for VM Protection. | 
| **protection_state** | string |  `Invalid`, `IRPending`, `Protected`, `ProtectionStopped`, `ProtectionError`, `ProtectionPaused`  |  Specifies Protection state of the backup. Possible values are `Invalid`, `IRPending`, `Protected`, `ProtectionStopped`, `ProtectionError` and `ProtectionPaused`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Protected Virtual Machine. | 

Additionally, all variables are provided as outputs.
