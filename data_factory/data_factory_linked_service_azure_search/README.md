# azurerm_data_factory_linked_service_azure_search

Manages a Linked Service (connection) between Azure Search Service and Azure Data Factory.

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
| **var.url** | string | True | The URL of the Search Service endpoint (e.g. <https://{searchServiceName}.search.windows.net>). | 
| **var.search_service_key** | string | True | The key of the Azure Search Service. | 



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
| **url** | string  | - | 
| **search_service_key** | string  | - | 
| **id** | string  | The ID of the Data Factory Linked Service. | 
| **encrypted_credential** | string  | The encrypted credential to connect to Azure Search Service. | 