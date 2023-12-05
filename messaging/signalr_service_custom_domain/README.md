# azurerm_signalr_service_custom_domain

Manages an Azure SignalR Custom Domain.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/signalr_service_custom_domain"   
}

inputs = {
   name = "name of signalr_service_custom_domain"   
   domain_name = "domain_name of signalr_service_custom_domain"   
   # signalr_service_id → set in tfstate_inputs
   signalr_custom_certificate_id = "signalr_custom_certificate_id of signalr_service_custom_domain"   
}

tfstate_inputs = {
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
| **name** | string |  Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **domain_name** | string |  Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **signalr_service_id** | string |  Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created. | 
| **signalr_custom_certificate_id** | string |  Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR Custom Domain. | 

Additionally, all variables are provided as outputs.
