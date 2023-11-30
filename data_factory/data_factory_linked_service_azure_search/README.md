# azurerm_data_factory_linked_service_azure_search

Manages a Linked Service (connection) between Azure Search Service and Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_azure_search" 
}

inputs = {
   name = "name of data_factory_linked_service_azure_search" 
   data_factory_id = "data_factory_id of data_factory_linked_service_azure_search" 
   url = "url of data_factory_linked_service_azure_search" 
   search_service_key = "search_service_key of data_factory_linked_service_azure_search" 
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
| **var.url** | string | True | The URL of the Search Service endpoint (e.g. <https://{searchServiceName}.search.windows.net>). | 
| **var.search_service_key** | string | True | The key of the Azure Search Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 
| **encrypted_credential** | string | No  | The encrypted credential to connect to Azure Search Service. | 

Additionally, all variables are provided as outputs.
