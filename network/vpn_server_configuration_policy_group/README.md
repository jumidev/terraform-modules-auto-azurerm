# azurerm_vpn_server_configuration_policy_group

Manages a VPN Server Configuration Policy Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created. | 
| **vpn_server_configuration_id** | string | True | -  |  -  | The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created. | 
| **policy** | list | True | -  |  -  | One or more `policy` blocks. | 
| **is_default** | bool | False | `False`  |  -  | Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created. | 
| **priority** | string | False | `0`  |  -  | The priority of this VPN Server Configuration Policy Group. Defaults to `0`. | 

