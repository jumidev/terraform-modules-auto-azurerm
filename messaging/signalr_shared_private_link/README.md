# azurerm_signalr_shared_private_link

Manages the Shared Private Link Resource for a Signalr service.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **var.signalr_service_id** | string | True | -  |  The id of the Signalr Service. Changing this forces a new resource to be created. | 
| **var.sub_resource_name** | string | True | `sites`, `vault`  |  The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.request_message** | string | False | -  |  The request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **signalr_service_id** | string  | - | 
| **sub_resource_name** | string  | - | 
| **target_resource_id** | string  | - | 
| **request_message** | string  | - | 
| **id** | string  | The ID of the Signalr Shared Private Link resource. | 
| **status** | string  | The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`. | 