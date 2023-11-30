# azurerm_mssql_managed_instance_transparent_data_encryption

Manages the transparent data encryption configuration for a MSSQL Managed Instance~> **NOTE:** Once transparent data encryption(TDE) is enabled on a MS SQL instance, it is not possible to remove TDE. You will be able to switch between 'ServiceManaged' and 'CustomerManaged' keys, but will not be able to remove encryption. For safety when this resource is deleted, the TDE mode will automatically be set to 'ServiceManaged'. See `key_vault_uri` for more information on how to specify the key types. As SQL Managed Instance only supports a single configuration for encryption settings, this resource will replace the current encryption settings on the server.~> **Note:** See [documentation](https://docs.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview) for important information on how handle lifecycle management of the keys to prevent data lockout.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_managed_instance_transparent_data_encryption" 
}

inputs = {
   managed_instance_id = "managed_instance_id of mssql_managed_instance_transparent_data_encryption" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.managed_instance_id** | string | True | Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | False | To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field. | 
| **var.auto_rotation_enabled** | bool | False | When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MSSQL encryption protector | 

Additionally, all variables are provided as outputs.
