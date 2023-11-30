# azurerm_mssql_server_transparent_data_encryption

Manages the transparent data encryption configuration for a MSSQL Server!> **IMPORTANT:** This resource should only be used with pre-existing MS SQL Instances that are over 2 years old. For new MS SQL Instances that will be created through the use of the `azurerm_mssql_server` resource, please enable Transit Data Encryption through `azurerm_mssql_server` resource itself by configuring an [identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server#identity) block. By default all new MS SQL Instances are deployed with System Managed Transparent Data Encryption enabled.~> **NOTE:** Once transparent data encryption is enabled on a MS SQL instance, it is not possible to remove TDE. You will be able to switch between 'ServiceManaged' and 'CustomerManaged' keys, but will not be able to remove encryption. For safety when this resource is deleted, the TDE mode will automatically be set to 'ServiceManaged'. See `key_vault_uri` for more information on how to specify the key types. As SQL Server only supports a single configuration for encryption settings, this resource will replace the current encryption settings on the server.~> **Note:** See [documentation](https://docs.microsoft.com/azure/azure-sql/database/transparent-data-encryption-byok-overview) for important information on how handle lifecycle management of the keys to prevent data lockout.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_server_transparent_data_encryption" 
}

inputs = {
   server_id = "server_id of mssql_server_transparent_data_encryption" 
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
| **var.server_id** | string | True | Specifies the name of the MS SQL Server. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | False | To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field. | 
| **var.auto_rotation_enabled** | bool | False | When enabled, the server will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the server will be automatically rotated to the latest key version within 60 minutes. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MSSQL encryption protector | 

Additionally, all variables are provided as outputs.
