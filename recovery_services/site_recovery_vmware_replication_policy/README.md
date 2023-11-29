# azurerm_site_recovery_vmware_replication_policy

Manages a VMWare Replication Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created. | 
| **recovery_vault_id** | string | True | -  |  -  | ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created. | 
| **recovery_point_retention_in_minutes** | int | True | -  |  -  | Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`. | 
| **application_consistent_snapshot_frequency_in_minutes** | int | True | -  |  -  | Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`. | 

