# azurerm_network_manager_static_member

Manages a Network Manager Static Member.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager_static_member"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Manager Static Member..."   
   # network_group_id → set in component_inputs
   # target_virtual_network_id → set in component_inputs
}

component_inputs = {
   network_group_id = "path/to/network_manager_component:id"   
   target_virtual_network_id = "path/to/network_manager_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created. | 
| **network_group_id** | string |  Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created. | 
| **target_virtual_network_id** | string |  Specifies the Resource ID of the Virtual Network using as the Static Member. Changing this forces a new Network Manager Static Member to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Static Member. | 
| **region** | string | No  | The region of the Network Manager Static Member. | 

Additionally, all variables are provided as outputs.
