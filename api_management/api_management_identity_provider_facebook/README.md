# azurerm_api_management_identity_provider_facebook

Manages an API Management Facebook Identity Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_identity_provider_facebook"   
}

inputs = {
   # api_management_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   app_id = "App ID for Facebook"   
   app_secret = "App Secret for Facebook"   
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
| **api_management_name** | string |  The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **app_id** | string |  App ID for Facebook. | 
| **app_secret** | string |  App Secret for Facebook. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Facebook Identity Provider. | 

Additionally, all variables are provided as outputs.
