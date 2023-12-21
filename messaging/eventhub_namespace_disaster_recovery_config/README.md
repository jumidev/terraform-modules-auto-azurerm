# azurerm_eventhub_namespace_disaster_recovery_config

Manages an Disaster Recovery Config for an Event Hub Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/eventhub_namespace_disaster_recovery_config"   
}

inputs = {
   name = "Specifies the name of the Disaster Recovery Config"   
   # namespace_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   # partner_namespace_id → set in component_inputs
}

component_inputs = {
   namespace_name = "path/to/eventhub_namespace_component:name"   
   partner_namespace_id = "path/to/eventhub_namespace_component:id"   
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
| **name** | string |  Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created. | 
| **namespace_name** | string |  Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created. | 
| **partner_namespace_id** | string |  The ID of the EventHub Namespace to replicate to. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub Namespace Disaster Recovery Config ID. | 

Additionally, all variables are provided as outputs.
