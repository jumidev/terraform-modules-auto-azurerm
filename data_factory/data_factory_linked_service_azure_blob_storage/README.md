# azurerm_data_factory_linked_service_azure_blob_storage

Manages a Linked Service (connection) between an Azure Blob Storage Account and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_azure_blob_storage" 
}

inputs = {
   name = "name of data_factory_linked_service_azure_blob_storage" 
   data_factory_id = "data_factory_id of data_factory_linked_service_azure_blob_storage" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.connection_string** | string | False | The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`. | 
| **var.connection_string_insecure** | string | False | The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`. | 
| **var.sas_uri** | string | False | The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`. | 
| **var.key_vault_sas_token** | block | False | A `key_vault_sas_token` block. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required. | 

### `key_vault_sas_token` block structure

>`linked_service_name` (string): (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
>`secret_name` (string): (REQUIRED) Specifies the secret name in Azure Key Vault that stores the SAS token.
>`service_principal_linked_key_vault_key` (block): A 'service_principal_linked_key_vault_key' block. Use this argument to store Service Principal key in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
