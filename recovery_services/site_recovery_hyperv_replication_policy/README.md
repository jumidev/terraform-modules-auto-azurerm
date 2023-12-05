# azurerm_site_recovery_hyperv_replication_policy

Manages a Azure Site Recovery replication policy for HyperV within a Recovery Vault. Replication policies define the frequency at which recovery points are created and how long they are stored.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "recovery_services/site_recovery_hyperv_replication_policy"   
}

inputs = {
   name = "The name of the replication policy"   
   recovery_vault_id = "The id of the vault that should be updated"   
   recovery_point_retention_in_hours = "The duration in hours for which the recovery points need to be stored..."   
   application_consistent_snapshot_frequency_in_hours = "Specifies the frequency at which to create application consistent recovery point..."   
   replication_interval_in_seconds = "Specifies how frequently data should be synchronized between source and target l..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the replication policy. Changing this forces a new resource to be created. | 
| **recovery_vault_id** | string |  -  |  The id of the vault that should be updated. Changing this forces a new resource to be created. | 
| **recovery_point_retention_in_hours** | string |  -  |  The duration in hours for which the recovery points need to be stored. | 
| **application_consistent_snapshot_frequency_in_hours** | string |  -  |  Specifies the frequency at which to create application consistent recovery points. | 
| **replication_interval_in_seconds** | string |  `30`, `300`  |  Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Replication Policy. | 

Additionally, all variables are provided as outputs.
