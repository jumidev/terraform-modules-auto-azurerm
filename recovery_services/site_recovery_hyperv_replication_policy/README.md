# azurerm_site_recovery_hyperv_replication_policy

Manages a Azure Site Recovery replication policy for HyperV within a Recovery Vault. Replication policies define the frequency at which recovery points are created and how long they are stored.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the replication policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_id** | string | True | -  |  The id of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_point_retention_in_hours** | string | True | -  |  The duration in hours for which the recovery points need to be stored. | 
| **var.application_consistent_snapshot_frequency_in_hours** | string | True | -  |  Specifies the frequency at which to create application consistent recovery points. | 
| **var.replication_interval_in_seconds** | string | True | `30`, `300`  |  Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **recovery_vault_id** | string  | - | 
| **recovery_point_retention_in_hours** | string  | - | 
| **application_consistent_snapshot_frequency_in_hours** | string  | - | 
| **replication_interval_in_seconds** | string  | - | 
| **id** | string  | The ID of the Site Recovery Replication Policy. | 