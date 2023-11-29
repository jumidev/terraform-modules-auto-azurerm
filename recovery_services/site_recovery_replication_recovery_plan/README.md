# azurerm_site_recovery_replication_recovery_plan

Manages a Site Recovery Replication Recovery Plan within a Recovery Services vault. A recovery plan gathers machines into recovery groups for the purpose of failover.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created. | 
| **recovery_vault_id** | string | True | -  |  -  | The ID of the vault that should be updated. Changing this forces a new resource to be created. | 
| **source_recovery_fabric_id** | string | True | -  |  -  | ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created. | 
| **target_recovery_fabric_id** | string | True | -  |  -  | ID of target fabric to recover. Changing this forces a new Replication Plan to be created. | 
| **recovery_group** | string | False | -  |  -  | Three or more `recovery_group` block defined as below. | 
| **shutdown_recovery_group** | block | False | -  |  -  | One `shutdown_recovery_group` block. | 
| **failover_recovery_group** | block | False | -  |  -  | One `failover_recovery_group` block. | 
| **boot_recovery_group** | block | False | -  |  -  | One or more `boot_recovery_group` blocks. | 
| **azure_to_azure_settings** | block | False | -  |  -  | An `azure_to_azure_settings` block. | 

