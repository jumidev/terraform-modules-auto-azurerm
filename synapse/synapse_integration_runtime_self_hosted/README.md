# azurerm_synapse_integration_runtime_self_hosted

Manages a Synapse Self-hosted Integration Runtime.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created. | 
| **var.synapse_workspace_id** | string | True | -  |  -  | The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created. | 
| **var.description** | string | False | -  |  -  | Integration runtime description. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Synapse Self-hosted Integration Runtime. | 
| **authorization_key_primary** | string  | The primary integration runtime authentication key. | 
| **authorization_key_secondary** | string  | The secondary integration runtime authentication key. | 