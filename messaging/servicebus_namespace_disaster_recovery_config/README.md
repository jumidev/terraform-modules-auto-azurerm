# azurerm_servicebus_namespace_disaster_recovery_config

Manages a Disaster Recovery Config for a Service Bus Namespace.~> **NOTE:** Disaster Recovery Config is a Premium SKU only capability.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created. | 
| **var.primary_namespace_id** | string | True | -  |  -  | The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created. | 
| **var.partner_namespace_id** | string | True | -  |  -  | The ID of the Service Bus Namespace to replicate to. | 
| **var.alias_authorization_rule_id** | string | False | -  |  -  | The Shared access policies used to access the connection string for the alias. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **primary_namespace_id** | string  | - | 
| **partner_namespace_id** | string  | - | 
| **alias_authorization_rule_id** | string  | - | 
| **id** | string  | The Service Bus Namespace Disaster Recovery Config ID. | 
| **primary_connection_string_alias** | string  | The alias Primary Connection String for the ServiceBus Namespace. | 
| **secondary_connection_string_alias** | string  | The alias Secondary Connection String for the ServiceBus Namespace | 
| **default_primary_key** | string  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_key** | string  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 