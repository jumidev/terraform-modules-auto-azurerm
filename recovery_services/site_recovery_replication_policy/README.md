# azurerm_site_recovery_replication_policy

Manages a Azure Site Recovery replication policy within a recovery vault. Replication policies define the frequency at which recovery points are created and how long they are stored.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the replication policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **recovery_point_retention_in_minutes** | int | True | -  |  -  | The duration in minutes for which the recovery points need to be stored. | 
| **application_consistent_snapshot_frequency_in_minutes** | int | True | -  |  -  | Specifies the frequency(in minutes) at which to create application consistent recovery points. | 

