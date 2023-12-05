# azurerm_api_management_api_schema

Manages an API Schema within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api_schema"   
}

inputs = {
   schema_id = "schema_id of api_management_api_schema"   
   api_name = "api_name of api_management_api_schema"   
   # api_management_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   content_type = "content_type of api_management_api_schema"   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **schema_id** | string |  A unique identifier for this API Schema. Changing this forces a new resource to be created. | 
| **api_name** | string |  The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **content_type** | string |  The content type of the API Schema. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **value** | string |  The JSON escaped string defining the document representing the Schema. | 
| **components** | string |  Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only. | 
| **definitions** | string |  Types definitions. Used for Swagger/OpenAPI v1 schemas only. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Schema. | 

Additionally, all variables are provided as outputs.
