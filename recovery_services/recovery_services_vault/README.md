# azurerm_recovery_services_vault

Manages a Recovery Services Vault.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "recovery_services/recovery_services_vault"   
}

inputs = {
   name = "Specifies the name of the Recovery Services Vault"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = "Sets the vault's SKU"   
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
| **name** | string |  -  |  Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string |  `Standard`, `RS0`  |  Sets the vault's SKU. Possible values include: `Standard`, `RS0`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Is it enabled to access the vault from public networks. Defaults to `true`. | 
| **immutability** | string |  -  |  `Locked`, `Unlocked`, `Disabled`  |  Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`. | 
| **storage_mode_type** | string |  `GeoRedundant`  |  `GeoRedundant`, `LocallyRedundant`, `ZoneRedundant`  |  The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`. | 
| **cross_region_restore_enabled** | bool |  `False`  |  `true`, `storage_mode_type`, `GeoRedundant`  |  Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`. | 
| **soft_delete_enabled** | bool |  `True`  |  -  |  Is soft delete enable for this Vault? Defaults to `true`. | 
| **encryption** | [block](#encryption-block-structure) |  -  |  -  |  An `encryption` block. Required with `identity`. | 
| **classic_vmware_replication_enabled** | bool |  -  |  -  |  Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created. | 
| **monitoring** | [block](#monitoring-block-structure) |  -  |  -  |  A `monitoring` block. | 

### `monitoring` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alerts_for_all_job_failures_enabled` | bool | No | True | Enabling/Disabling built-in Azure Monitor alerts for security scenarios and job failure scenarios. Defaults to 'true'. |
| `alerts_for_critical_operation_failures_enabled` | bool | No | True | Enabling/Disabling alerts from the older (classic alerts) solution. Defaults to 'true'. More details could be found [here](https://learn.microsoft.com/en-us/azure/backup/monitoring-and-alerts-overview). |

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_id` | string | Yes | - | The Key Vault key id used to encrypt this vault. Key managed by Vault Managed Hardware Security Module is also supported. |
| `infrastructure_encryption_enabled` | bool | Yes | - | Enabling/Disabling the Double Encryption state. |
| `user_assigned_identity_id` | string | No | - | Specifies the user assigned identity ID to be used. |
| `use_system_assigned_identity` | bool | No | True | Indicate that system assigned identity should be used or not. Defaults to 'true'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Recovery Services Vault. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this App Configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Recovery Services Vault. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
