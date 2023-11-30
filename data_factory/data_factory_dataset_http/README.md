# azurerm_data_factory_dataset_http

Manages an Azure HTTP Dataset inside an Azure Data Factory.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | The Data Factory Linked Service name in which to associate the Dataset with. | 
| **var.folder** | string | False | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block | False | A `schema_column` block. | 
| **var.description** | string | False | The description for the Data Factory Dataset. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Dataset. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Dataset. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Dataset. | 
| **var.relative_url** | string | False | The relative URL based on the URL in the HTTP Linked Service. | 
| **var.request_body** | string | False | The body for the HTTP request. | 
| **var.request_method** | string | False | The HTTP method for the HTTP request. (e.g. GET, POST) | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **linked_service_name** | string  | - | 
| **folder** | string  | - | 
| **schema_column** | block  | - | 
| **description** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **relative_url** | string  | - | 
| **request_body** | string  | - | 
| **request_method** | string  | - | 
| **id** | string  | The ID of the Data Factory Dataset. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_http" 
}

inputs = {
   name = "name of data_factory_dataset_http" 
   data_factory_id = "data_factory_id of data_factory_dataset_http" 
   linked_service_name = "linked_service_name of data_factory_dataset_http" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```