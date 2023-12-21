# azurerm_site_recovery_vmware_replication_policy

Manages a VMWare Replication Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "recovery_services/site_recovery_vmware_replication_policy"   
}

inputs = {
   name = "The name which should be used for this Classic Replication Policy..."   
   # recovery_vault_id → set in component_inputs
   recovery_point_retention_in_minutes = "Specifies the period up to which the recovery points will be retained..."   
   application_consistent_snapshot_frequency_in_minutes = "Specifies the frequency at which to create application consistent recovery point..."   
}

component_inputs = {
   recovery_vault_id = "path/to/recovery_services_vault_component:id"   
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
| **name** | string |  -  |  The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created. | 
| **recovery_vault_id** | string |  -  |  ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created. | 
| **recovery_point_retention_in_minutes** | string |  `0`, `21600`  |  Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`. | 
| **application_consistent_snapshot_frequency_in_minutes** | string |  `0`, `720`  |  Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Classic Replication Policy. | 

Additionally, all variables are provided as outputs.
