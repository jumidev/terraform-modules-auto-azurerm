# azurerm_network_manager_network_group

Manages a Network Manager Network Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_network_group" 
}

inputs = {
   name = "name of network_manager_network_group" 
   network_manager_id = "network_manager_id of network_manager_network_group" 
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
| **var.name** | string  Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created. | 
| **var.network_manager_id** | string  Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  A description of the Network Manager Network Group. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Network Group. | 

Additionally, all variables are provided as outputs.
