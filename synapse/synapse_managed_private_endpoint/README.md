# azurerm_synapse_managed_private_endpoint

Manages a Synapse Managed Private Endpoint.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.synapse_workspace_id** | string | True | The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | True | Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **synapse_workspace_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **subresource_name** | string  | - | 
| **id** | string  | The Synapse Managed Private Endpoint ID. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_managed_private_endpoint" 
}

inputs = {
   name = "name of synapse_managed_private_endpoint" 
   synapse_workspace_id = "synapse_workspace_id of synapse_managed_private_endpoint" 
   target_resource_id = "target_resource_id of synapse_managed_private_endpoint" 
   subresource_name = "subresource_name of synapse_managed_private_endpoint" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```