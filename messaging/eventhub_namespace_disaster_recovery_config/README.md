# azurerm_eventhub_namespace_disaster_recovery_config

Manages an Disaster Recovery Config for an Event Hub Namespace.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created. | 
| **var.partner_namespace_id** | string | True | The ID of the EventHub Namespace to replicate to. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **namespace_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **partner_namespace_id** | string  | - | 
| **id** | string  | The EventHub Namespace Disaster Recovery Config ID. | 