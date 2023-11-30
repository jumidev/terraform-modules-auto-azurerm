# azurerm_site_recovery_vmware_replication_policy

Manages a VMWare Replication Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_vmware_replication_policy" 
}

inputs = {
   name = "name of site_recovery_vmware_replication_policy" 
   recovery_vault_id = "recovery_vault_id of site_recovery_vmware_replication_policy" 
   recovery_point_retention_in_minutes = "recovery_point_retention_in_minutes of site_recovery_vmware_replication_policy" 
   application_consistent_snapshot_frequency_in_minutes = "application_consistent_snapshot_frequency_in_minutes of site_recovery_vmware_replication_policy" 
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
| **var.name** | string |  The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created. | 
| **var.recovery_vault_id** | string |  ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created. | 
| **var.recovery_point_retention_in_minutes** | int |  Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`. | 
| **var.application_consistent_snapshot_frequency_in_minutes** | int |  Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Classic Replication Policy. | 

Additionally, all variables are provided as outputs.
