# azurerm_network_manager_static_member

Manages a Network Manager Static Member.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created. | 
| **var.network_group_id** | string | True | Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created. | 
| **var.target_virtual_network_id** | string | True | Specifies the Resource ID of the Virtual Network using as the Static Member. Changing this forces a new Network Manager Static Member to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **network_group_id** | string  | - | 
| **target_virtual_network_id** | string  | - | 
| **id** | string  | The ID of the Network Manager Static Member. | 
| **region** | string  | The region of the Network Manager Static Member. | 