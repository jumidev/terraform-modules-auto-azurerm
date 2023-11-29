# azurerm_api_management_schema

Manages a Global Schema within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **schema_id** | string | True | -  |  -  | A unique identifier for this Schema. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  `xml`, `json`  | The content type of the Schema. Possible values are `xml` and `json`. | 
| **value** | string | True | -  |  -  | The string defining the document representing the Schema. | 
| **description** | string | False | -  |  -  | The description of the schema. | 

