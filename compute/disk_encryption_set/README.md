# azurerm_disk_encryption_set

Manages a Disk Encryption Set.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/disk_encryption_set" 
}

inputs = {
   name = "name of disk_encryption_set" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   key_vault_key_id = "key_vault_key_id of disk_encryption_set" 
   identity = "identity of disk_encryption_set" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Disk Encryption Set. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | True | -  |  -  |  Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). | 
| **var.auto_key_rotation_enabled** | bool | False | `False`  |  `true`, `false`  |  Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`. | 
| **var.encryption_type** | string | False | `EncryptionAtRestWithCustomerKey`  |  `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys`, `ConfidentialVmEncryptedWithCustomerKey`  |  The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created. | 
| **var.federated_client_id** | string | False | -  |  -  |  Multi-tenant application client id to access key vault in a different tenant. | 
| **var.identity** | block | True | -  |  -  |  An `identity` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Disk Encryption Set. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Disk Encryption Set. | 
| **key_vault_key_url** | string | No  | The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service. | 
| **principal_id** | string | No  | The (Client) ID of the Service Principal. | 
| **tenant_id** | string | No  | The ID of the Tenant the Service Principal is assigned in. | 

Additionally, all variables are provided as outputs.
