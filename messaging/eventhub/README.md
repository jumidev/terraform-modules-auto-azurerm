# azurerm_eventhub

Manages a Event Hubs as a nested resource within a Event Hubs namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the EventHub resource. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the EventHub's parent Namespace exists. Changing this forces a new resource to be created. | 
| **partition_count** | int | True | -  |  -  | Specifies the current number of shards on the Event Hub. | 
| **message_retention** | int | True | -  |  -  | Specifies the number of days to retain the events for this Event Hub. | 
| **capture_description** | block | False | -  |  -  | A `capture_description` block. | 
| **status** | string | False | `Active`  |  `Active`, `Disabled`, `SendDisabled`  | Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`. | 

