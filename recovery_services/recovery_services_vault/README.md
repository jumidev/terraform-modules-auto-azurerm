# azurerm_recovery_services_vault

Manages a Recovery Services Vault.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **sku** | string | True | -  |  `Standard`, `RS0`  | Sets the vault's SKU. Possible values include: `Standard`, `RS0`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Is it enabled to access the vault from public networks. Defaults to `true`. | 
| **immutability** | string | False | -  |  `Locked`, `Unlocked`, `Disabled`  | Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`. | 
| **storage_mode_type** | string | False | `GeoRedundant`  |  `GeoRedundant`, `LocallyRedundant`, `ZoneRedundant`  | The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`. | 
| **cross_region_restore_enabled** | bool | False | `False`  |  -  | Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`. | 
| **soft_delete_enabled** | bool | False | `True`  |  -  | Is soft delete enable for this Vault? Defaults to `true`. | 
| **encryption** | block | False | -  |  -  | An `encryption` block. Required with `identity`. | 
| **classic_vmware_replication_enabled** | bool | False | -  |  -  | Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created. | 
| **monitoring** | block | False | -  |  -  | A `monitoring` block. | 

