# azurerm_search_shared_private_link_service

Manages the Shared Private Link Service for an Azure Search Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "search/search_shared_private_link_service" 
}

inputs = {
   name = "name of search_shared_private_link_service" 
   # search_service_id → set in tfstate_inputs
   subresource_name = "subresource_name of search_shared_private_link_service" 
   # target_resource_id → set in tfstate_inputs
}

tfstate_inputs = {
   search_service_id = "path/to/search_service_component:id" 
   target_resource_id = "path/to/any_resource_component:id" 
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
| **name** | string |  Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **search_service_id** | string |  Specify the id of the Azure Search Service. Changing this forces a new resource to be created. | 
| **subresource_name** | string |  Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **target_resource_id** | string |  Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **request_message** | string |  Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Search Shared Private Link resource. | 
| **status** | string | No  | The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected. | 

Additionally, all variables are provided as outputs.
