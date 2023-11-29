# azurerm_api_management_openid_connect_provider

Manages an OpenID Connect Provider within a API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | the Name of the OpenID Connect Provider which should be created within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service in which this OpenID Connect Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **client_id** | string | True | -  |  -  | The Client ID used for the Client Application. | 
| **client_secret** | string | True | -  |  -  | The Client Secret used for the Client Application. | 
| **display_name** | string | True | -  |  -  | A user-friendly name for this OpenID Connect Provider. | 
| **metadata_endpoint** | string | True | -  |  -  | The URI of the Metadata endpoint. | 
| **description** | string | False | -  |  -  | A description of this OpenID Connect Provider. | 

