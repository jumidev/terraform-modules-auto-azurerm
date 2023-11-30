# azurerm_api_management_api_version_set

Manages an API Version Set within an API Management Service.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  The name of the [API Management Service](api_management.html) in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  The display name of this API Version Set. | 
| **var.versioning_scheme** | string | True | `Header`, `Query`, `Segment`  |  Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`. | 
| **var.description** | string | False | -  |  The description of API Version Set. | 
| **var.version_header_name** | string | False | -  |  The name of the Header which should be read from Inbound Requests which defines the API Version. | 
| **var.version_query_name** | string | False | -  |  The name of the Query String which should be read from Inbound Requests which defines the API Version. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **display_name** | string  | - | 
| **versioning_scheme** | string  | - | 
| **description** | string  | - | 
| **version_header_name** | string  | - | 
| **version_query_name** | string  | - | 
| **id** | string  | The ID of the API Version Set. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api_version_set" 
}

inputs = {
   name = "name of api_management_api_version_set" 
   api_management_name = "api_management_name of api_management_api_version_set" 
   resource_group_name = "${resource_group}" 
   display_name = "display_name of api_management_api_version_set" 
   versioning_scheme = "versioning_scheme of api_management_api_version_set" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```