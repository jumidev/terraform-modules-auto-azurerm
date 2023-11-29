# azurerm_data_factory_linked_service_azure_blob_storage

Manages a Linked Service (connection) between an Azure Blob Storage Account and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string | False | -  |  -  | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Linked Service. | 
| **connection_string** | string | False | -  |  -  | The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`. | 
| **connection_string_insecure** | string | False | -  |  -  | The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`. | 
| **sas_uri** | string | False | -  |  -  | The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`. | 
| **key_vault_sas_token** | block | False | -  |  -  | A `key_vault_sas_token` block. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required. | 

