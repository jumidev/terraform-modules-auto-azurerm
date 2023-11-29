# azurerm_signalr_service_custom_domain

Manages an Azure SignalR Custom Domain.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **var.domain_name** | string | True | Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **var.signalr_service_id** | string | True | Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **var.signalr_custom_certificate_id** | string | True | Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **domain_name** | string  | - | 
| **signalr_service_id** | string  | - | 
| **signalr_custom_certificate_id** | string  | - | 
| **id** | string  | The ID of the SignalR Custom Domain. | 