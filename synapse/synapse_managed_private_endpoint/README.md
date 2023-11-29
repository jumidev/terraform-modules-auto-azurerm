# azurerm_synapse_managed_private_endpoint

Manages a Synapse Managed Private Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  -  | The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | True | -  |  -  | Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **subresource_name** | string  | - | 
| **id** | string  | The Synapse Managed Private Endpoint ID. | 