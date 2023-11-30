# azurerm_recovery_services_vault

Manages a Recovery Services Vault.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.sku** | string | True | -  |  `Standard`, `RS0`  |  Sets the vault's SKU. Possible values include: `Standard`, `RS0`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Is it enabled to access the vault from public networks. Defaults to `true`. | 
| **var.immutability** | string | False | -  |  `Locked`, `Unlocked`, `Disabled`  |  Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`. | 
| **var.storage_mode_type** | string | False | `GeoRedundant`  |  `GeoRedundant`, `LocallyRedundant`, `ZoneRedundant`  |  The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`. | 
| **var.cross_region_restore_enabled** | bool | False | `False`  |  -  |  Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`. | 
| **var.soft_delete_enabled** | bool | False | `True`  |  -  |  Is soft delete enable for this Vault? Defaults to `true`. | 
| **var.encryption** | block | False | -  |  -  |  An `encryption` block. Required with `identity`. | 
| **var.classic_vmware_replication_enabled** | bool | False | -  |  -  |  Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created. | 
| **var.monitoring** | block | False | -  |  -  |  A `monitoring` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **identity** | block  | - | 
| **sku** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **immutability** | string  | - | 
| **storage_mode_type** | string  | - | 
| **cross_region_restore_enabled** | bool  | - | 
| **soft_delete_enabled** | bool  | - | 
| **encryption** | block  | - | 
| **classic_vmware_replication_enabled** | bool  | - | 
| **monitoring** | block  | - | 
| **id** | string  | The ID of the Recovery Services Vault. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/recovery_services_vault" 
}

inputs = {
   name = "name of recovery_services_vault" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of recovery_services_vault" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```