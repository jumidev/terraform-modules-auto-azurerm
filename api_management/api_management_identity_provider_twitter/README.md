# azurerm_api_management_identity_provider_twitter

Manages an API Management Twitter Identity Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_identity_provider_twitter"   
}

inputs = {
   # api_management_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   api_key = "App Consumer API key for Twitter"   
   api_secret_key = "App Consumer API secret key for Twitter"   
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
| **api_management_name** | string |  The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **api_key** | string |  App Consumer API key for Twitter. | 
| **api_secret_key** | string |  App Consumer API secret key for Twitter. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Twitter Identity Provider. | 

Additionally, all variables are provided as outputs.
