# azurerm_vpn_server_configuration_policy_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/vpn_server_configuration_policy_group"   
}
inputs = {
   name = "The Name which should be used for this VPN Server Configuration Policy Group..."   
   # vpn_server_configuration_id → set in component_inputs
   policy = "One or more `policy` blocks"   
}
component_inputs = {
   vpn_server_configuration_id = "path/to/vpn_server_configuration_component:id"   
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
| **name** | string |  The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created. | 
| **vpn_server_configuration_id** | string |  The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created. | 
| **policy** | string |  One or more `policy` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **is_default** | bool |  `False`  |  Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created. | 
| **priority** | string |  `0`  |  The priority of this VPN Server Configuration Policy Group. Defaults to `0`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | The value of the attribute that is used for the VPN Server Configuration Policy member. In addition to the arguments above, the following attributes are exported: | 
| **id** | string | No  | The ID of the VPN Server Configuration Policy Group. | 

Additionally, all variables are provided as outputs.
