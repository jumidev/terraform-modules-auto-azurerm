# azurerm_data_factory_linked_service_azure_blob_storage

Manages a Linked Service (connection) between an Azure Blob Storage Account and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_azure_blob_storage" 
}

inputs = {
   name = "name of data_factory_linked_service_azure_blob_storage" 
   # data_factory_id → set in tfstate_inputs
}

tfstate_inputs = {
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
| **name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **connection_string** | string |  The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`. | 
| **connection_string_insecure** | string |  The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`. | 
| **sas_uri** | string |  The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`. | 
| **key_vault_sas_token** | [block](#key_vault_sas_token-block-structure) |  A `key_vault_sas_token` block. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required. | 

### `service_principal_linked_key_vault_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores the Service Principal key. |
| `service_endpoint` | string | No | - | The Service Endpoint. Conflicts with 'connection_string', 'connection_string_insecure' and 'sas_uri'. |
| `use_managed_identity` | bool | No | - | Whether to use the Data Factory's managed identity to authenticate against the Azure Blob Storage account. Incompatible with 'service_principal_id' and 'service_principal_key'. |
| `service_principal_id` | string | No | - | The service principal id in which to authenticate against the Azure Blob Storage account. |
| `service_principal_key` | string | No | - | The service principal key in which to authenticate against the AAzure Blob Storage account. |
| `storage_kind` | string | No | - | Specify the kind of the storage account. Allowed values are 'Storage', 'StorageV2', 'BlobStorage' and 'BlockBlobStorage'. |
| `tenant_id` | string | No | - | The tenant id or name in which to authenticate against the Azure Blob Storage account. |

### `key_vault_sas_token` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `linked_service_name` | string | Yes | - | Specifies the name of an existing Key Vault Data Factory Linked Service. |
| `secret_name` | string | Yes | - | Specifies the secret name in Azure Key Vault that stores the SAS token. |
| `service_principal_linked_key_vault_key` | [block](#key_vault_sas_token-block-structure) | No | - | A 'service_principal_linked_key_vault_key' block. Use this argument to store Service Principal key in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
