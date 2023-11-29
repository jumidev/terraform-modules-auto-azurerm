# azurerm_search_shared_private_link_service

Manages the Shared Private Link Service for an Azure Search Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **search_service_id** | string | True | -  |  -  | Specify the id of the Azure Search Service. Changing this forces a new resource to be created. | 
| **subresource_name** | string | True | -  |  -  | Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **request_message** | string | False | -  |  -  | Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 

