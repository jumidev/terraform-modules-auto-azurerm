# azurerm_signalr_service_custom_certificate

Manages an Azure SignalR Custom Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/signalr_service_custom_certificate" 
}

inputs = {
   name = "name of signalr_service_custom_certificate" 
   signalr_service_id = "signalr_service_id of signalr_service_custom_certificate" 
   custom_certificate_id = "custom_certificate_id of signalr_service_custom_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the SignalR Custom Certificate. Changing this forces a new resource to be created. | 
| **var.signalr_service_id** | string | True | The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created. | 
| **var.custom_certificate_id** | string | True | The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR Custom Certificate. | 
| **certificate_version** | string | No  | The certificate version of the SignalR Custom Certificate service. | 

Additionally, all variables are provided as outputs.
