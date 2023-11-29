# azurerm_key_vault_certificate

Manages a Key Vault Certificate.~> **Note:** The Azure Provider includes a Feature Toggle which will purge a Key Vault Certificate resource on destroy, rather than the default soft-delete. See [`purge_soft_deleted_certificates_on_destroy`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block#purge_soft_deleted_certificates_on_destroy) for more information.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created. | 
| **key_vault_id** | string | True | -  |  -  | The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created. | 
| **certificate** | block | False | -  |  -  | A `certificate` block, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate. | 
| **certificate_policy** | block | False | -  |  -  | A `certificate_policy` block. Changing this will create a new version of the Key Vault Certificate. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

