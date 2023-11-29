# azurerm_eventhub_authorization_rule

Manages a Event Hubs authorization Rule within an Event Hub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created. | 
| **eventhub_name** | string | True | -  |  -  | Specifies the name of the EventHub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created. | 
| **listen** | bool | False | `False`  |  -  | Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`. | 
| **send** | bool | False | `False`  |  -  | Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`. | 
| **manage** | bool | False | `False`  |  -  | Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 

