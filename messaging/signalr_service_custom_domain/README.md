# azurerm_signalr_service_custom_domain

Manages an Azure SignalR Custom Domain.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **domain_name** | string | True | -  |  -  | Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **signalr_service_id** | string | True | -  |  -  | Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **signalr_custom_certificate_id** | string | True | -  |  -  | Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created. | 

