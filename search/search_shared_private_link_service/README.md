# azurerm_search_shared_private_link_service

Manages the Shared Private Link Service for an Azure Search Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "search/search_shared_private_link_service" 
}

inputs = {
   name = "name of search_shared_private_link_service" 
   search_service_id = "search_service_id of search_shared_private_link_service" 
   subresource_name = "subresource_name of search_shared_private_link_service" 
   target_resource_id = "target_resource_id of search_shared_private_link_service" 
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
| **var.name** | string | True | Specify the name of the Azure Search Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **var.search_service_id** | string | True | Specify the id of the Azure Search Service. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | True | Specify the sub resource name which the Azure Search Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | Specify the ID of the Shared Private Link Enabled Remote Resource which this Azure Search Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.request_message** | string | False | Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Search Shared Private Link resource. | 
| **status** | string | No  | The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected. | 

Additionally, all variables are provided as outputs.
