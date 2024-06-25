# azurerm_storage_container_immutability_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_container_immutability_policy"   
}
inputs = {
   # storage_container_resource_manager_id → set in component_inputs
   immutability_period_in_days = "The time interval in days that the data needs to be kept in a non-erasable and n..."   
}
component_inputs = {
   storage_container_resource_manager_id = "path/to/storage_container_component:id"   
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
| **storage_container_resource_manager_id** | string |  The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created. | 
| **immutability_period_in_days** | number |  The time interval in days that the data needs to be kept in a non-erasable and non-modifiable state. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **locked** | string |  -  |  Whether to lock this immutability policy. Cannot be set to `false` once the policy has been locked. !> **Locking an Immutability Policy** Once an Immutability Policy has been locked, it cannot be unlocked. After locking, it will only be possible to increase the value for `retention_period_in_days` up to 5 times for the lifetime of the policy. No other properties will be updateable. Furthermore, the Storage Container and the Storage Account in which it resides will become protected by the policy. It will no longer be possible to delete the Storage Container or the Storage Account. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/immutable-policy-configure-container-scope?tabs=azure-portal#lock-a-time-based-retention-policy) for more information. | 
| **protected_append_writes_all_enabled** | bool |  `False`  |  Whether to allow protected append writes to block and append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_enabled`. | 
| **protected_append_writes_enabled** | bool |  `False`  |  Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_all_enabled`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **protected_append_writes_enabled** | bool | No  | Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_all_enabled`. No additional attributes are exported. | 

Additionally, all variables are provided as outputs.
