# azurerm_api_management_schema

Manages a Global Schema within an API Management Service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.schema_id** | string | True | -  |  -  | A unique identifier for this Schema. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  | The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.type** | string | True | -  |  `xml`, `json`  | The content type of the Schema. Possible values are `xml` and `json`. | 
| **var.value** | string | True | -  |  -  | The string defining the document representing the Schema. | 
| **var.description** | string | False | -  |  -  | The description of the schema. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **schema_id** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **type** | string  | - | 
| **value** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the API Management API Schema. | 