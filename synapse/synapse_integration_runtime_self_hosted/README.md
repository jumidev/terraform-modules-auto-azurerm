# azurerm_synapse_integration_runtime_self_hosted

Manages a Synapse Self-hosted Integration Runtime.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_integration_runtime_self_hosted"   
}

inputs = {
   name = "The name which should be used for this Synapse Self-hosted Integration Runtime..."   
   # synapse_workspace_id → set in component_inputs
}

component_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **name** | string |  The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created. | 
| **synapse_workspace_id** | string |  The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Integration runtime description. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **description** | string | No  | Integration runtime description. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Synapse Self-hosted Integration Runtime. | 
| **authorization_key_primary** | string | No  | The primary integration runtime authentication key. | 
| **authorization_key_secondary** | string | No  | The secondary integration runtime authentication key. | 

Additionally, all variables are provided as outputs.
