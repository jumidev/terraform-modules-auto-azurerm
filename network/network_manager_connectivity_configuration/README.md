# azurerm_network_manager_connectivity_configuration

Manages a Network Manager Connectivity Configuration.-> **Note:** The `azurerm_network_manager_connectivity_configuration` deployment may modify or delete existing Network Peering resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **applies_to_group** | block | True | -  |  -  | An `applies_to_group` block. | 
| **connectivity_topology** | string | True | -  |  `HubAndSpoke`, `Mesh`  | Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`. | 
| **delete_existing_peering_enabled** | string | False | -  |  `true`, `false`  | Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`. | 
| **description** | string | False | -  |  -  | A description of the Connectivity Configuration. | 
| **global_mesh_enabled** | string | False | -  |  `true`, `false`  | Indicates whether to global mesh is supported. Possible values are `true` and `false`. | 
| **hub** | block | False | -  |  -  | A `hub` block. | 

