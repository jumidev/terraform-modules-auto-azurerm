# azurerm_api_management_api_operation

Manages an API Operation within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api_operation"   
}

inputs = {
   operation_id = "A unique identifier for this API Operation"   
   api_name = "The name of the API within the API Management Service where this API Operation s..."   
   # api_management_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   display_name = "The Display Name for this API Management Operation"   
   method = "The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `P..."   
   url_template = "The relative URL Template identifying the target resource for this operation, wh..."   
}

component_inputs = {
   api_management_name = "path/to/api_management_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **operation_id** | string |  A unique identifier for this API Operation. Changing this forces a new resource to be created. | 
| **api_name** | string |  The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **display_name** | string |  The Display Name for this API Management Operation. | 
| **method** | string |  The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values. | 
| **url_template** | string |  The relative URL Template identifying the target resource for this operation, which may include parameters. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for this API Operation, which may include HTML formatting tags. | 
| **request** | [block](#request-block-structure) |  A `request` block. | 
| **response** | [block](#response-block-structure) |  One or more `response` blocks. | 
| **template_parameter** | [block](#template_parameter-block-structure) |  One or more `template_parameter` blocks. Required if `url_template` contains one or more parameters. | 

### `template_parameter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of this Template Parameter. |
| `required` | bool | Yes | - | Is this Template Parameter Required? |
| `type` | string | Yes | - | The Type of this Template Parameter, such as a 'string'. |
| `description` | string | No | - | A description of this Template Parameter. |
| `default_value` | string | No | - | The default value for this Template Parameter. |
| `values` | list | No | - | One or more acceptable values for this Template Parameter. |
| `example` | list | No | - | One or more 'example' blocks. |
| `schema_id` | string | No | - | The name of the Schema. |
| `type_name` | string | No | - | The type name defined by the Schema. |

### `representation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content_type` | string | Yes | - | The Content Type of this representation, such as 'application/json'. |
| `form_parameter` | list | No | - | One or more 'form_parameter' block. |
| `example` | list | No | - | One or more 'example' blocks. |
| `schema_id` | string | No | - | The ID of an API Management Schema which represents this Response. |
| `type_name` | string | No | - | The Type Name defined by the Schema. |

### `request` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | A description of the HTTP Request, which may include HTML tags. |
| `header` | list | No | - | One or more 'header' blocks. |
| `query_parameter` | list | No | - | One or more 'query_parameter' blocks. |
| `representation` | [block](#representation-block-structure) | No | - | One or more 'representation' blocks. |

### `response` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `status_code` | string | Yes | - | The HTTP Status Code. |
| `description` | string | No | - | A description of the HTTP Response, which may include HTML tags. |
| `header` | list | No | - | One or more 'header' blocks. |
| `representation` | [block](#representation-block-structure) | No | - | One or more 'representation' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Operation. | 

Additionally, all variables are provided as outputs.
