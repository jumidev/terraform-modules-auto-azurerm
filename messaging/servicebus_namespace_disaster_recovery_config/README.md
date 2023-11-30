# azurerm_servicebus_namespace_disaster_recovery_config

Manages a Disaster Recovery Config for a Service Bus Namespace.~> **NOTE:** Disaster Recovery Config is a Premium SKU only capability.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/servicebus_namespace_disaster_recovery_config" 
}

inputs = {
   name = "name of servicebus_namespace_disaster_recovery_config" 
   primary_namespace_id = "primary_namespace_id of servicebus_namespace_disaster_recovery_config" 
   partner_namespace_id = "partner_namespace_id of servicebus_namespace_disaster_recovery_config" 
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
| **var.name** | string |  Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created. | 
| **var.primary_namespace_id** | string |  The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created. | 
| **var.partner_namespace_id** | string |  The ID of the Service Bus Namespace to replicate to. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.alias_authorization_rule_id** | string |  The Shared access policies used to access the connection string for the alias. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Service Bus Namespace Disaster Recovery Config ID. | 
| **primary_connection_string_alias** | string | No  | The alias Primary Connection String for the ServiceBus Namespace. | 
| **secondary_connection_string_alias** | string | No  | The alias Secondary Connection String for the ServiceBus Namespace | 
| **default_primary_key** | string | No  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_key** | string | No  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 

Additionally, all variables are provided as outputs.
