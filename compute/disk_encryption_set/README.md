# azurerm_disk_encryption_set

Manages a Disk Encryption Set.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Disk Encryption Set. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string | True | -  |  -  | Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). | 
| **auto_key_rotation_enabled** | bool | False | `False`  |  `true`, `false`  | Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`. | 
| **encryption_type** | string | False | `EncryptionAtRestWithCustomerKey`  |  `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys`, `ConfidentialVmEncryptedWithCustomerKey`  | The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created. | 
| **federated_client_id** | string | False | -  |  -  | Multi-tenant application client id to access key vault in a different tenant. | 
| **identity** | block | True | -  |  -  | An `identity` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Disk Encryption Set. | 

