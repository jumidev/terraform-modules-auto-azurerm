# azurerm_site_recovery_replication_policy

Manages a Azure Site Recovery replication policy within a recovery vault. Replication policies define the frequency at which recovery points are created and how long they are stored.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "recovery_services/site_recovery_replication_policy"   
}

inputs = {
   name = "The name of the replication policy"   
   resource_group_name = "${resource_group}"   
   recovery_vault_name = "The name of the vault that should be updated"   
   recovery_point_retention_in_minutes = "The duration in minutes for which the recovery points need to be stored..."   
   application_consistent_snapshot_frequency_in_minutes = "Specifies the frequency(in minutes) at which to create application consistent re..."   
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
| **name** | string |  The name of the replication policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string |  The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **recovery_point_retention_in_minutes** | int |  The duration in minutes for which the recovery points need to be stored. | 
| **application_consistent_snapshot_frequency_in_minutes** | int |  Specifies the frequency(in minutes) at which to create application consistent recovery points. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Replication Policy. | 

Additionally, all variables are provided as outputs.
