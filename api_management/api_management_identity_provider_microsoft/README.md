# azurerm_api_management_identity_provider_microsoft

Manages an API Management Microsoft Identity Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_identity_provider_microsoft" 
}

inputs = {
   api_management_name = "api_management_name of api_management_identity_provider_microsoft" 
   resource_group_name = "${resource_group}" 
   client_id = "client_id of api_management_identity_provider_microsoft" 
   client_secret = "client_secret of api_management_identity_provider_microsoft" 
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
| **var.api_management_name** | string |  The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string |  Client Id of the Azure AD Application. | 
| **var.client_secret** | string |  Client secret of the Azure AD Application. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Microsoft Identity Provider. | 

Additionally, all variables are provided as outputs.
