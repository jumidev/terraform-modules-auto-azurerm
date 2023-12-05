# azurerm_data_protection_backup_vault

Manages a Backup Vault.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dataprotection/data_protection_backup_vault"   
}

inputs = {
   name = "Specifies the name of the Backup Vault"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   datastore_type = "Specifies the type of the data store"   
   redundancy = "Specifies the backup storage redundancy"   
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
| **name** | string |  -  |  Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created. | 
| **location** | string |  -  |  The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created. | 
| **datastore_type** | string |  `ArchiveStore`, `SnapshotStore`, `VaultStore`  |  Specifies the type of the data store. Possible values are `ArchiveStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created. | 
| **redundancy** | string |  `GeoRedundant`, `LocallyRedundant`  |  Specifies the backup storage redundancy. Possible values are `GeoRedundant` and `LocallyRedundant`. Changing this forces a new Backup Vault to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the Backup Vault. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Backup Vault. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Vault. | 
| **identity** | block | No  | An `identity` block, which contains the Identity information for this Backup Vault. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this Backup Vault. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this Backup Vault. | 

Additionally, all variables are provided as outputs.
