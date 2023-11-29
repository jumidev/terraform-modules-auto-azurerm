# azurerm_eventhub_consumer_group

Manages a Event Hubs Consumer Group as a nested resource within an Event Hub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created. | 
| **eventhub_name** | string | True | -  |  -  | Specifies the name of the EventHub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created. | 
| **user_metadata** | string | False | -  |  -  | Specifies the user metadata. | 

