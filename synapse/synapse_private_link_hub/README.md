# azurerm_synapse_private_link_hub

Manages a Synapse Private Link Hub.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Synapse Private Link Hub. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Synapse Private Link Hub. | 