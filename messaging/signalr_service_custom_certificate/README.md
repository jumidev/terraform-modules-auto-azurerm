# azurerm_signalr_service_custom_certificate

Manages an Azure SignalR Custom Certificate.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the SignalR Custom Certificate. Changing this forces a new resource to be created. | 
| **var.signalr_service_id** | string | True | -  |  -  | The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created. | 
| **var.custom_certificate_id** | string | True | -  |  -  | The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **signalr_service_id** | string  | - | 
| **custom_certificate_id** | string  | - | 
| **id** | string  | The ID of the SignalR Custom Certificate. | 
| **certificate_version** | string  | The certificate version of the SignalR Custom Certificate service. | 