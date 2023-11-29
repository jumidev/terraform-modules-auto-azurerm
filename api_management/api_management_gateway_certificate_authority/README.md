# azurerm_api_management_gateway_certificate_authority

Manages an API Management Gateway Certificate Authority.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_id** | string | True | -  |  -  | The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **certificate_name** | string | True | -  |  -  | The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **gateway_name** | string | True | -  |  -  | The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **is_trusted** | bool | False | -  |  -  | Whether the API Management Gateway Certificate Authority is trusted. | 

