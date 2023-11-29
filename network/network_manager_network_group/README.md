# azurerm_network_manager_network_group

Manages a Network Manager Network Group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Network Group. Changing this forces a new Network Manager Network Group to be created. | 
| **var.network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager. Changing this forces a new Network Manager Network Group to be created. | 
| **var.description** | string | False | -  |  -  | A description of the Network Manager Network Group. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **network_manager_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Network Manager Network Group. | 