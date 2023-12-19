# azurerm_data_factory_linked_service_azure_sql_database

Manages a Linked Service (connection) between Azure SQL Database and Azure Data Factory.~> **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_linked_service_azure_sql_database"   
}

inputs = {
   name = "Specifies the name of the Data Factory Linked Service Azure SQL Database..."   
   # data_factory_id → set in component_inputs
}

component_inputs = {
   data_factory_id = "path/to/data_factory_component:id"   
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
| **name** | string |  Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **connection_string** | string |  The connection string in which to authenticate with Azure SQL Database. Exactly one of either `connection_string` or `key_vault_connection_string` is required. | 
| **use_managed_identity** | bool |  Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with `service_principal_id` and `service_principal_key` | 
| **service_principal_id** | string |  The service principal id in which to authenticate against the Azure SQL Database. Required if `service_principal_key` is set. | 
| **service_principal_key** | string |  The service principal key in which to authenticate against the Azure SQL Database. Required if `service_principal_id` is set. | 
| **tenant_id** | string |  The tenant id or name in which to authenticate against the Azure SQL Database. | 
| **description** | string |  The description for the Data Factory Linked Service Azure SQL Database. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service Azure SQL Database. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service Azure SQL Database. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service Azure SQL Database. | 
| **key_vault_connection_string** | [block](#key_vault_connection_string-block-structure) |  A `key_vault_connection_string` block. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required. | 
| **key_vault_password** | [block](#key_vault_password-block-structure) |  A `key_vault_password` block. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. | 

### `key_vault_connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores SQL Server connection string. |

### `key_vault_password` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores SQL Server password. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Azure SQL Database Linked Service. | 

Additionally, all variables are provided as outputs.
