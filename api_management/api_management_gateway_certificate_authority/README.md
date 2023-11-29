# azurerm_api_management_gateway_certificate_authority

Manages an API Management Gateway Certificate Authority.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_id** | string | True | The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **var.certificate_name** | string | True | The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **var.gateway_name** | string | True | The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **var.is_trusted** | bool | False | Whether the API Management Gateway Certificate Authority is trusted. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **certificate_name** | string  | - | 
| **gateway_name** | string  | - | 
| **is_trusted** | bool  | - | 
| **id** | string  | The ID of the API Management Gateway Certificate Authority. | 