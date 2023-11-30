# azurerm_api_management_identity_provider_facebook

Manages an API Management Facebook Identity Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_identity_provider_facebook" 
}

inputs = {
   api_management_name = "api_management_name of api_management_identity_provider_facebook" 
   resource_group_name = "${resource_group}" 
   app_id = "app_id of api_management_identity_provider_facebook" 
   app_secret = "app_secret of api_management_identity_provider_facebook" 
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
| **var.api_management_name** | string | True | The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.app_id** | string | True | App ID for Facebook. | 
| **var.app_secret** | string | True | App Secret for Facebook. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Facebook Identity Provider. | 

Additionally, all variables are provided as outputs.
