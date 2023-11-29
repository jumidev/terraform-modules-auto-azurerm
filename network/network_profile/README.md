# azurerm_network_profile

Manages a Network Profile.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Network Profile. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.container_network_interface** | block | True | -  |  -  | A `container_network_interface` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **container_network_interface** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Network Profile. | 
| **container_network_interface_ids** | list  | A list of Container Network Interface IDs. | 