# azurerm_signalr_service_custom_certificate

Manages an Azure SignalR Custom Certificate.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/signalr_service_custom_certificate"   
}

inputs = {
   name = "The name of the SignalR Custom Certificate"   
   # signalr_service_id → set in component_inputs
   custom_certificate_id = "The certificate id of the SignalR Custom Certificate service..."   
}

component_inputs = {
   signalr_service_id = "path/to/signalr_service_component:id"   
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
| **name** | string |  The name of the SignalR Custom Certificate. Changing this forces a new resource to be created. | 
| **signalr_service_id** | string |  The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created. | 
| **custom_certificate_id** | string |  The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR Custom Certificate. | 
| **certificate_version** | string | No  | The certificate version of the SignalR Custom Certificate service. | 

Additionally, all variables are provided as outputs.
