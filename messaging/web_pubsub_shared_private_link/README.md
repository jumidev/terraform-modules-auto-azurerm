# azurerm_web_pubsub_shared_private_link

Manages the Shared Private Link Resource for a Web Pubsub service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/web_pubsub_shared_private_link"   
}

inputs = {
   name = "Specify the name of the Web Pubsub Shared Private Link Resource..."   
   # web_pubsub_id → set in tfstate_inputs
   subresource_name = "Specify the sub resource name which the Web Pubsub Private Endpoint is able to c..."   
   # target_resource_id → set in tfstate_inputs
}

tfstate_inputs = {
   web_pubsub_id = "path/to/web_pubsub_component:id"   
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
| **name** | string |  Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created. | 
| **web_pubsub_id** | string |  Specify the id of the Web Pubsub. Changing this forces a new resource to be created. | 
| **subresource_name** | string |  Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 
| **target_resource_id** | string |  Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **request_message** | string |  Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web Pubsub Shared Private Link resource. | 
| **status** | string | No  | The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected. | 

Additionally, all variables are provided as outputs.
