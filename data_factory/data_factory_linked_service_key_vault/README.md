# azurerm_data_factory_linked_service_key_vault

Manages a Linked Service (connection) between Key Vault and Azure Data Factory.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service Key Vault. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.key_vault_id** | string | True | The ID the Azure Key Vault resource. | 
| **var.description** | string | False | The description for the Data Factory Linked Service Key Vault. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service Key Vault. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service Key Vault. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service Key Vault. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service Key Vault. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **key_vault_id** | string  | - | 
| **description** | string  | - | 
| **integration_runtime_name** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **id** | string  | The ID of the Data Factory Key Vault Linked Service. | 