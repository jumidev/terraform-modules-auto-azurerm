# azurerm_signalr_shared_private_link

Manages the Shared Private Link Resource for a Signalr service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **signalr_service_id** | string | True | -  |  -  | The id of the Signalr Service. Changing this forces a new resource to be created. | 
| **sub_resource_name** | string | True | -  |  `sites`, `vault`  | The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **request_message** | string | False | -  |  -  | The request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 

