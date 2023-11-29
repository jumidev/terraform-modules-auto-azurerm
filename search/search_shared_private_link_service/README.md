# azurerm_search_shared_private_link_service

Manages the Shared Private Link Service for an Azure Search Service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **var.search_service_id** | string | True | -  |  -  | Specify the id of the Azure Search Service. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | True | -  |  -  | Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  -  | Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.request_message** | string | False | -  |  -  | Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **search_service_id** | string  | - | 
| **subresource_name** | string  | - | 
| **target_resource_id** | string  | - | 
| **request_message** | string  | - | 
| **id** | string  | The ID of the Azure Search Shared Private Link resource. | 
| **status** | string  | The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected. | 