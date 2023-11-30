# azurerm_api_management_openid_connect_provider

Manages an OpenID Connect Provider within a API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_openid_connect_provider" 
}

inputs = {
   name = "name of api_management_openid_connect_provider" 
   api_management_name = "api_management_name of api_management_openid_connect_provider" 
   resource_group_name = "${resource_group}" 
   client_id = "client_id of api_management_openid_connect_provider" 
   client_secret = "client_secret of api_management_openid_connect_provider" 
   display_name = "display_name of api_management_openid_connect_provider" 
   metadata_endpoint = "metadata_endpoint of api_management_openid_connect_provider" 
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
| **var.name** | string |  the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string |  The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string |  The Client ID used for the Client Application. | 
| **var.client_secret** | string |  The Client Secret used for the Client Application. | 
| **var.display_name** | string |  A user-friendly name for this OpenID Connect Provider. | 
| **var.metadata_endpoint** | string |  The URI of the Metadata endpoint. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  A description of this OpenID Connect Provider. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management OpenID Connect Provider. | 

Additionally, all variables are provided as outputs.
