# azurerm_disk_encryption_set

Manages a Disk Encryption Set.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/disk_encryption_set"   
}

inputs = {
   name = "The name of the Disk Encryption Set"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # key_vault_key_id → set in component_inputs
   identity = {
      type = "..."      
   }
   
}

component_inputs = {
   key_vault_key_id = "path/to/key_vault_key_component:id"   
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
| **name** | string |  The name of the Disk Encryption Set. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string |  Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). -> **NOTE** Access to the KeyVault must be granted for this Disk Encryption Set, if you want to further use this Disk Encryption Set in a Managed Disk or Virtual Machine, or Virtual Machine Scale Set. For instructions, please refer to the doc of [Server side encryption of Azure managed disks](https://docs.microsoft.com/azure/virtual-machines/linux/disk-encryption). -> **NOTE** A KeyVault using [enable_rbac_authorization](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enable_rbac_authorization) requires to use `azurerm_role_assignment` to assigne the role `Key Vault Crypto Service Encryption User` to this Disk Encryption Set. In this case, `azurerm_key_vault_access_policy` is not needed. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **auto_key_rotation_enabled** | bool |  `False`  |  `true`, `false`  |  Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`. -> **NOTE** When `auto_key_rotation_enabled` is set to `true` the `key_vault_key_id` must use the `versionless_id`. -> **NOTE** To validate which Key Vault Key version is currently being used by the service it is recommended that you use the `azurerm_disk_encryption_set` data source or run a `terraform refresh` command and check the value of the exported `key_vault_key_url` field. -> **NOTE** It may take between 10 to 20 minutes for the service to update the Key Vault Key URL once the keys have been rotated. | 
| **encryption_type** | string |  `EncryptionAtRestWithCustomerKey`  |  `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys`, `ConfidentialVmEncryptedWithCustomerKey`  |  The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created. | 
| **federated_client_id** | string |  -  |  -  |  Multi-tenant application client id to access key vault in a different tenant. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Disk Encryption Set. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of Managed Service Identity that is configured on this Disk Encryption Set. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **identity_ids** | list | No  | A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set. ~> **NOTE:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Disk Encryption Set. | 
| **key_vault_key_url** | string | No  | The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service. | 
| **principal_id** | string | No  | The (Client) ID of the Service Principal. | 
| **tenant_id** | string | No  | The ID of the Tenant the Service Principal is assigned in. | 

Additionally, all variables are provided as outputs.
