# azurerm_network_manager_network_group

Manages a Network Manager Network Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager_network_group"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Manager Network Group..."   
   # network_manager_id → set in component_inputs
}

component_inputs = {
   network_manager_id = "path/to/network_manager_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created. | 
| **network_manager_id** | string |  Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the Network Manager Network Group. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Network Group. | 

Additionally, all variables are provided as outputs.
