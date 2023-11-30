# azurerm_eventhub_namespace_disaster_recovery_config

Manages an Disaster Recovery Config for an Event Hub Namespace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub_namespace_disaster_recovery_config" 
}

inputs = {
   name = "name of eventhub_namespace_disaster_recovery_config" 
   namespace_name = "namespace_name of eventhub_namespace_disaster_recovery_config" 
   resource_group_name = "${resource_group}" 
   partner_namespace_id = "partner_namespace_id of eventhub_namespace_disaster_recovery_config" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created. | 
| **var.namespace_name** | string | True | Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created. | 
| **var.partner_namespace_id** | string | True | The ID of the EventHub Namespace to replicate to. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub Namespace Disaster Recovery Config ID. | 

Additionally, all variables are provided as outputs.
