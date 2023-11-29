# azurerm_network_manager

Manages a Network Managers.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Managers. Changing this forces a new Network Managers to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Network Managers should exist. Changing this forces a new Network Managers to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Network Managers should exist. Changing this forces a new resource to be created. | 
| **scope** | block | True | -  |  -  | A `scope` block. | 
| **scope_accesses** | string | True | -  |  `Connectivity`, `SecurityAdmin`  | A list of configuration deployment type. Possible values are `Connectivity` and `SecurityAdmin`, corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager. | 
| **description** | string | False | -  |  -  | A description of the network manager. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Network Managers. | 

