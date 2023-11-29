# azurerm_network_manager_connectivity_configuration

Manages a Network Manager Connectivity Configuration.-> **Note:** The `azurerm_network_manager_connectivity_configuration` deployment may modify or delete existing Network Peering resource.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **var.network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **var.applies_to_group** | block | True | -  |  -  | An `applies_to_group` block. | 
| **var.connectivity_topology** | string | True | -  |  `HubAndSpoke`, `Mesh`  | Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`. | 
| **var.delete_existing_peering_enabled** | string | False | -  |  `true`, `false`  | Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`. | 
| **var.description** | string | False | -  |  -  | A description of the Connectivity Configuration. | 
| **var.global_mesh_enabled** | string | False | -  |  `true`, `false`  | Indicates whether to global mesh is supported. Possible values are `true` and `false`. | 
| **var.hub** | block | False | -  |  -  | A `hub` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **network_manager_id** | string  | - | 
| **applies_to_group** | block  | - | 
| **connectivity_topology** | string  | - | 
| **delete_existing_peering_enabled** | string  | - | 
| **description** | string  | - | 
| **global_mesh_enabled** | string  | - | 
| **hub** | block  | - | 
| **id** | string  | The ID of the Network Manager Connectivity Configuration. | 