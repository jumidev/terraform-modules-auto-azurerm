# azurerm_virtual_wan

Manages a Virtual WAN.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Virtual WAN. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **disable_vpn_encryption** | bool | False | `False`  |  -  | Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`. | 
| **allow_branch_to_branch_traffic** | bool | False | `True`  |  -  | Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`. | 
| **office365_local_breakout_category** | string | False | `None`  |  `Optimize`, `OptimizeAndAllow`, `All`, `None`  | Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`. | 
| **type** | string | False | `Standard`  |  -  | Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Virtual WAN. | 

