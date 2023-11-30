# azurerm_signalr_shared_private_link

Manages the Shared Private Link Resource for a Signalr service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/signalr_shared_private_link" 
}

inputs = {
   name = "name of signalr_shared_private_link" 
   signalr_service_id = "signalr_service_id of signalr_shared_private_link" 
   sub_resource_name = "sub_resource_name of signalr_shared_private_link" 
   target_resource_id = "target_resource_id of signalr_shared_private_link" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **var.signalr_service_id** | string  -  |  The id of the Signalr Service. Changing this forces a new resource to be created. | 
| **var.sub_resource_name** | string  `sites`, `vault`  |  The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string  -  |  The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.request_message** | string  The request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Signalr Shared Private Link resource. | 
| **status** | string | No  | The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`. | 

Additionally, all variables are provided as outputs.
