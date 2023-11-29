# azurerm_network_manager_static_member

Manages a Network Manager Static Member.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created. | 
| **network_group_id** | string | True | -  |  -  | Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created. | 
| **target_virtual_network_id** | string | True | -  |  -  | Specifies the Resource ID of the Virtual Network using as the Static Member. Changing this forces a new Network Manager Static Member to be created. | 

