# azurerm_api_management_api_schema

Manages an API Schema within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **schema_id** | string | True | -  |  -  | A unique identifier for this API Schema. Changing this forces a new resource to be created. | 
| **api_name** | string | True | -  |  -  | The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **content_type** | string | True | -  |  -  | The content type of the API Schema. | 
| **value** | string | False | -  |  -  | The JSON escaped string defining the document representing the Schema. | 
| **components** | string | False | -  |  -  | Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only. | 
| **definitions** | string | False | -  |  -  | Types definitions. Used for Swagger/OpenAPI v1 schemas only. | 

