# azurerm_api_management_api_operation

Manages an API Operation within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **operation_id** | string | True | -  |  -  | A unique identifier for this API Operation. Changing this forces a new resource to be created. | 
| **api_name** | string | True | -  |  -  | The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **display_name** | string | True | -  |  -  | The Display Name for this API Management Operation. | 
| **method** | string | True | -  |  -  | The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values. | 
| **url_template** | string | True | -  |  -  | The relative URL Template identifying the target resource for this operation, which may include parameters. | 
| **description** | string | False | -  |  -  | A description for this API Operation, which may include HTML formatting tags. | 
| **request** | block | False | -  |  -  | A `request` block. | 
| **response** | block | False | -  |  -  | One or more `response` blocks. | 
| **template_parameter** | block | False | -  |  -  | One or more `template_parameter` blocks. Required if `url_template` contains one or more parameters. | 

