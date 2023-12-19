# azurerm_eventhub_authorization_rule

Manages a Event Hubs authorization Rule within an Event Hub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventhub_authorization_rule"   
}

inputs = {
   name = "Specifies the name of the EventHub Authorization Rule resource..."   
   # namespace_name → set in component_inputs
   # eventhub_name → set in component_inputs
   resource_group_name = "${resource_group}"   
}

component_inputs = {
   namespace_name = "path/to/eventhub_namespace_component:name"   
   eventhub_name = "path/to/eventhub_component:name"   
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
| **name** | string |  Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created. | 
| **eventhub_name** | string |  Specifies the name of the EventHub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **listen** | bool |  `False`  |  Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`. | 
| **send** | bool |  `False`  |  Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`. | 
| **manage** | bool |  `False`  |  Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub ID. | 
| **primary_connection_string_alias** | string | No  | The alias of the Primary Connection String for the Event Hubs authorization Rule, which is generated when disaster recovery is enabled. | 
| **secondary_connection_string_alias** | string | No  | The alias of the Secondary Connection String for the Event Hubs Authorization Rule, which is generated when disaster recovery is enabled. | 
| **primary_connection_string** | string | No  | The Primary Connection String for the Event Hubs authorization Rule. | 
| **primary_key** | string | No  | The Primary Key for the Event Hubs authorization Rule. | 
| **secondary_connection_string** | string | No  | The Secondary Connection String for the Event Hubs Authorization Rule. | 
| **secondary_key** | string | No  | The Secondary Key for the Event Hubs Authorization Rule. | 

Additionally, all variables are provided as outputs.
