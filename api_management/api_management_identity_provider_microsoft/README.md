# azurerm_api_management_identity_provider_microsoft

Manages an API Management Microsoft Identity Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_identity_provider_microsoft"   
}

inputs = {
   # api_management_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   client_id = "Client Id of the Azure AD Application"   
   client_secret = "Client secret of the Azure AD Application"   
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
| **api_management_name** | string |  The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **client_id** | string |  Client Id of the Azure AD Application. | 
| **client_secret** | string |  Client secret of the Azure AD Application. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Microsoft Identity Provider. | 

Additionally, all variables are provided as outputs.
