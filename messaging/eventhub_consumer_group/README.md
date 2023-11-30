# azurerm_eventhub_consumer_group

Manages a Event Hubs Consumer Group as a nested resource within an Event Hub.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | Specifies the name of the EventHub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created. | 
| **var.user_metadata** | string | False | Specifies the user metadata. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **namespace_name** | string  | - | 
| **eventhub_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **user_metadata** | string  | - | 
| **id** | string  | The ID of the EventHub Consumer Group. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub_consumer_group" 
}

inputs = {
   name = "name of eventhub_consumer_group" 
   namespace_name = "namespace_name of eventhub_consumer_group" 
   eventhub_name = "eventhub_name of eventhub_consumer_group" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```