# azurerm_api_management_api_version_set

Manages an API Version Set within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api_version_set"   
}

inputs = {
   name = "The name of the API Version Set"   
   # api_management_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   display_name = "The display name of this API Version Set"   
   versioning_scheme = "Specifies where in an Inbound HTTP Request that the API Version should be read f..."   
}

tfstate_inputs = {
   api_management_name = "path/to/api_management_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  -  |  The name of the [API Management Service](api_management.html) in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created. | 
| **display_name** | string |  -  |  The display name of this API Version Set. | 
| **versioning_scheme** | string |  `Header`, `Query`, `Segment`  |  Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of API Version Set. | 
| **version_header_name** | string |  The name of the Header which should be read from Inbound Requests which defines the API Version. | 
| **version_query_name** | string |  The name of the Query String which should be read from Inbound Requests which defines the API Version. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Version Set. | 

Additionally, all variables are provided as outputs.
