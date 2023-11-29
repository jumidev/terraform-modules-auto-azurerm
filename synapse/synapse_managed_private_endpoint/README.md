# azurerm_synapse_managed_private_endpoint

Manages a Synapse Managed Private Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **subresource_name** | string | True | -  |  -  | Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 

