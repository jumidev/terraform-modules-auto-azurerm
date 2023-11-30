# azurerm_site_recovery_replication_policy

Manages a Azure Site Recovery replication policy within a recovery vault. Replication policies define the frequency at which recovery points are created and how long they are stored.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the replication policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_point_retention_in_minutes** | int | True | The duration in minutes for which the recovery points need to be stored. | 
| **var.application_consistent_snapshot_frequency_in_minutes** | int | True | Specifies the frequency(in minutes) at which to create application consistent recovery points. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **recovery_point_retention_in_minutes** | int  | - | 
| **application_consistent_snapshot_frequency_in_minutes** | int  | - | 
| **id** | string  | The ID of the Site Recovery Replication Policy. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_replication_policy" 
}

inputs = {
   name = "name of site_recovery_replication_policy" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of site_recovery_replication_policy" 
   recovery_point_retention_in_minutes = "recovery_point_retention_in_minutes of site_recovery_replication_policy" 
   application_consistent_snapshot_frequency_in_minutes = "application_consistent_snapshot_frequency_in_minutes of site_recovery_replication_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```