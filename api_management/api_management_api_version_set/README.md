# azurerm_api_management_api_version_set

Manages an API Version Set within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the [API Management Service](api_management.html) in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created. | 
| **display_name** | string | True | -  |  -  | The display name of this API Version Set. | 
| **versioning_scheme** | string | True | -  |  `Header`, `Query`, `Segment`  | Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`. | 
| **description** | string | False | -  |  -  | The description of API Version Set. | 
| **version_header_name** | string | False | -  |  -  | The name of the Header which should be read from Inbound Requests which defines the API Version. | 
| **version_query_name** | string | False | -  |  -  | The name of the Query String which should be read from Inbound Requests which defines the API Version. | 

