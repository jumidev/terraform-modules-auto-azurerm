# azurerm_network_manager_connectivity_configuration

Manages a Network Manager Connectivity Configuration.-> **Note:** The `azurerm_network_manager_connectivity_configuration` deployment may modify or delete existing Network Peering resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager_connectivity_configuration"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Manager Connectivity Co..."   
   # network_manager_id → set in tfstate_inputs
   applies_to_group = {
      group_connectivity = "..."      
      network_group_id = "..."      
   }
   
   connectivity_topology = "Specifies the connectivity topology type"   
}

tfstate_inputs = {
   network_manager_id = "path/to/network_manager_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **network_manager_id** | string |  -  |  Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created. | 
| **applies_to_group** | [block](#applies_to_group-block-structure) |  -  |  An `applies_to_group` block. | 
| **connectivity_topology** | string |  `HubAndSpoke`, `Mesh`  |  Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **delete_existing_peering_enabled** | string |  `true`, `false`  |  Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`. | 
| **description** | string |  -  |  A description of the Connectivity Configuration. | 
| **global_mesh_enabled** | string |  `true`, `false`  |  Indicates whether to global mesh is supported. Possible values are `true` and `false`. | 
| **hub** | [block](#hub-block-structure) |  -  |  A `hub` block. | 

### `applies_to_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `group_connectivity` | string | Yes | - | Specifies the group connectivity type. Possible values are 'None' and 'DirectlyConnected'. |
| `network_group_id` | string | Yes | - | Specifies the resource ID of Network Group which the configuration applies to. |
| `global_mesh_enabled` | string | No | - | Indicates whether to global mesh is supported for this group. Possible values are 'true' and 'false'. |
| `use_hub_gateway` | string | No | - | Indicates whether the hub gateway is used. Possible values are 'true' and 'false'. |

### `hub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `resource_id` | string | Yes | - | Specifies the resource ID used as hub in Hub And Spoke topology. |
| `resource_type` | string | Yes | - | Specifies the resource Type used as hub in Hub And Spoke topology. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Connectivity Configuration. | 

Additionally, all variables are provided as outputs.
