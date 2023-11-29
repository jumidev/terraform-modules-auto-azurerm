# azurerm_api_management_openid_connect_provider

Manages an OpenID Connect Provider within a API Management Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string | True | The Client ID used for the Client Application. | 
| **var.client_secret** | string | True | The Client Secret used for the Client Application. | 
| **var.display_name** | string | True | A user-friendly name for this OpenID Connect Provider. | 
| **var.metadata_endpoint** | string | True | The URI of the Metadata endpoint. | 
| **var.description** | string | False | A description of this OpenID Connect Provider. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **client_id** | string  | - | 
| **client_secret** | string  | - | 
| **display_name** | string  | - | 
| **metadata_endpoint** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the API Management OpenID Connect Provider. | 