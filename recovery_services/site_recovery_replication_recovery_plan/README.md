# azurerm_site_recovery_replication_recovery_plan

Manages a Site Recovery Replication Recovery Plan within a Recovery Services vault. A recovery plan gathers machines into recovery groups for the purpose of failover.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created. | 
| **var.recovery_vault_id** | string | True | The ID of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.source_recovery_fabric_id** | string | True | ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created. | 
| **var.target_recovery_fabric_id** | string | True | ID of target fabric to recover. Changing this forces a new Replication Plan to be created. | 
| **var.recovery_group** | string | False | Three or more `recovery_group` block defined as below. | 
| **var.shutdown_recovery_group** | block | False | One `shutdown_recovery_group` block. | 
| **var.failover_recovery_group** | block | False | One `failover_recovery_group` block. | 
| **var.boot_recovery_group** | block | False | One or more `boot_recovery_group` blocks. | 
| **var.azure_to_azure_settings** | block | False | An `azure_to_azure_settings` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **recovery_vault_id** | string  | - | 
| **source_recovery_fabric_id** | string  | - | 
| **target_recovery_fabric_id** | string  | - | 
| **recovery_group** | string  | - | 
| **shutdown_recovery_group** | block  | - | 
| **failover_recovery_group** | block  | - | 
| **boot_recovery_group** | block  | - | 
| **azure_to_azure_settings** | block  | - | 
| **id** | string  | The ID of the Site Recovery Fabric. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_replication_recovery_plan" 
}

inputs = {
   name = "name of site_recovery_replication_recovery_plan" 
   recovery_vault_id = "recovery_vault_id of site_recovery_replication_recovery_plan" 
   source_recovery_fabric_id = "source_recovery_fabric_id of site_recovery_replication_recovery_plan" 
   target_recovery_fabric_id = "target_recovery_fabric_id of site_recovery_replication_recovery_plan" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```