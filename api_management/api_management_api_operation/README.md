# azurerm_api_management_api_operation

Manages an API Operation within an API Management Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.operation_id** | string | True | A unique identifier for this API Operation. Changing this forces a new resource to be created. | 
| **var.api_name** | string | True | The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | The Display Name for this API Management Operation. | 
| **var.method** | string | True | The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values. | 
| **var.url_template** | string | True | The relative URL Template identifying the target resource for this operation, which may include parameters. | 
| **var.description** | string | False | A description for this API Operation, which may include HTML formatting tags. | 
| **var.request** | block | False | A `request` block. | 
| **var.response** | block | False | One or more `response` blocks. | 
| **var.template_parameter** | block | False | One or more `template_parameter` blocks. Required if `url_template` contains one or more parameters. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **operation_id** | string  | - | 
| **api_name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **display_name** | string  | - | 
| **method** | string  | - | 
| **url_template** | string  | - | 
| **description** | string  | - | 
| **request** | block  | - | 
| **response** | block  | - | 
| **template_parameter** | block  | - | 
| **id** | string  | The ID of the API Management API Operation. | 