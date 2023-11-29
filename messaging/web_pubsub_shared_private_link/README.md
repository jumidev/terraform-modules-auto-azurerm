# azurerm_web_pubsub_shared_private_link

Manages the Shared Private Link Resource for a Web Pubsub service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string | True | -  |  -  | Specify the id of the Web Pubsub. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | True | -  |  -  | Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  -  | Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.request_message** | string | False | -  |  -  | Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **web_pubsub_id** | string  | - | 
| **subresource_name** | string  | - | 
| **target_resource_id** | string  | - | 
| **request_message** | string  | - | 
| **id** | string  | The ID of the Web Pubsub Shared Private Link resource. | 
| **status** | string  | The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected. | 