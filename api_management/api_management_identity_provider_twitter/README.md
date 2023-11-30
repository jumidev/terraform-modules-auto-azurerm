# azurerm_api_management_identity_provider_twitter

Manages an API Management Twitter Identity Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_identity_provider_twitter" 
}

inputs = {
   api_management_name = "api_management_name of api_management_identity_provider_twitter" 
   resource_group_name = "${resource_group}" 
   api_key = "api_key of api_management_identity_provider_twitter" 
   api_secret_key = "api_secret_key of api_management_identity_provider_twitter" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_name** | string | True | The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.api_key** | string | True | App Consumer API key for Twitter. | 
| **var.api_secret_key** | string | True | App Consumer API secret key for Twitter. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Twitter Identity Provider. | 

Additionally, all variables are provided as outputs.
