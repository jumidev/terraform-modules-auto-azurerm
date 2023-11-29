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