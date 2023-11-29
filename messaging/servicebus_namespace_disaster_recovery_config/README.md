# azurerm_servicebus_namespace_disaster_recovery_config

Manages a Disaster Recovery Config for a Service Bus Namespace.~> **NOTE:** Disaster Recovery Config is a Premium SKU only capability.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created. | 
| **primary_namespace_id** | string | True | -  |  -  | The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created. | 
| **partner_namespace_id** | string | True | -  |  -  | The ID of the Service Bus Namespace to replicate to. | 
| **alias_authorization_rule_id** | string | False | -  |  -  | The Shared access policies used to access the connection string for the alias. | 

