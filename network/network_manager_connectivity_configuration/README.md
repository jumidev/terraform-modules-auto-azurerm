# azurerm_network_manager_connectivity_configuration

Manages a Network Manager Connectivity Configuration.-> **Note:** The `azurerm_network_manager_connectivity_configuration` deployment may modify or delete existing Network Peering resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_connectivity_configuration" 
}

inputs = {
   name = "name of network_manager_connectivity_configuration" 
   network_manager_id = "network_manager_id of network_manager_connectivity_configuration" 
   applies_to_group = "applies_to_group of network_manager_connectivity_configuration" 
   connectivity_topology = "connectivity_topology of network_manager_connectivity_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **var.network_manager_id** | string | True | -  |  Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **var.applies_to_group** | block | True | -  |  An `applies_to_group` block. | 
| `applies_to_group` block structure: || 
|   group_connectivity (string): (REQUIRED) Specifies the group connectivity type. Possible values are 'None' and 'DirectlyConnected'. ||
|   network_group_id (string): (REQUIRED) Specifies the resource ID of Network Group which the configuration applies to. ||
|   global_mesh_enabled (string): Indicates whether to global mesh is supported for this group. Possible values are 'true' and 'false'. ||
|   use_hub_gateway (string): Indicates whether the hub gateway is used. Possible values are 'true' and 'false'. ||
| **var.connectivity_topology** | string | True | `HubAndSpoke`, `Mesh`  |  Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`. | 
| **var.delete_existing_peering_enabled** | string | False | `true`, `false`  |  Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`. | 
| **var.description** | string | False | -  |  A description of the Connectivity Configuration. | 
| **var.global_mesh_enabled** | string | False | `true`, `false`  |  Indicates whether to global mesh is supported. Possible values are `true` and `false`. | 
| **var.hub** | block | False | -  |  A `hub` block. | 
| `hub` block structure: || 
|   resource_id (string): (REQUIRED) Specifies the resource ID used as hub in Hub And Spoke topology. ||
|   resource_type (string): (REQUIRED) Specifies the resource Type used as hub in Hub And Spoke topology. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Connectivity Configuration. | 

Additionally, all variables are provided as outputs.
