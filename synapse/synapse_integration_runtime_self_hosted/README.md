# azurerm_synapse_integration_runtime_self_hosted

Manages a Synapse Self-hosted Integration Runtime.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Synapse Self-hosted Integration Runtime. Changing this forces a new Synapse Self-hosted Integration Runtime to be created. | 
| **synapse_workspace_id** | string | True | -  |  -  | The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Self-hosted Integration Runtime to be created. | 
| **description** | string | False | -  |  -  | Integration runtime description. | 

