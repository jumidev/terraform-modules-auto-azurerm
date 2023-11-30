# azurerm_vpn_server_configuration_policy_group

Manages a VPN Server Configuration Policy Group.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created. | 
| **var.vpn_server_configuration_id** | string | True | -  |  The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created. | 
| **var.policy** | list | True | -  |  One or more `policy` blocks. | 
| **var.is_default** | bool | False | `False`  |  Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.priority** | string | False | `0`  |  The priority of this VPN Server Configuration Policy Group. Defaults to `0`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **vpn_server_configuration_id** | string  | - | 
| **policy** | list  | - | 
| **is_default** | bool  | - | 
| **priority** | string  | - | 
| **id** | string  | The ID of the VPN Server Configuration Policy Group. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_server_configuration_policy_group" 
}

inputs = {
   name = "name of vpn_server_configuration_policy_group" 
   vpn_server_configuration_id = "vpn_server_configuration_id of vpn_server_configuration_policy_group" 
   policy = "policy of vpn_server_configuration_policy_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```