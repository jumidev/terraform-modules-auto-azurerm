# azurerm_eventhub_namespace_disaster_recovery_config

Manages an Disaster Recovery Config for an Event Hub Namespace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created. | 
| **namespace_name** | string | True | -  |  -  | Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created. | 
| **partner_namespace_id** | string | True | -  |  -  | The ID of the EventHub Namespace to replicate to. | 

