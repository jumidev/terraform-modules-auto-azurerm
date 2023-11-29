# azurerm_data_factory_linked_service_synapse

Manages a Linked Service (connection) between Synapse and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service Synapse. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | The description for the Data Factory Linked Service Synapse. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service Synapse. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service Synapse. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service Synapse. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service Synapse. | 
| **var.connection_string** | string | True | The connection string in which to authenticate with the Synapse. | 
| **var.key_vault_password** | block | False | A `key_vault_password` block. Use this argument to store Synapse password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **description** | string  | - | 
| **integration_runtime_name** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **connection_string** | string  | - | 
| **key_vault_password** | block  | - | 
| **id** | string  | The ID of the Data Factory Synapse Linked Service. | 