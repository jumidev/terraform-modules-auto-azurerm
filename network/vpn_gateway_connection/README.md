# azurerm_vpn_gateway_connection

Manages a VPN Gateway Connection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_gateway_connection" 
}

inputs = {
   name = "name of vpn_gateway_connection" 
   remote_vpn_site_id = "remote_vpn_site_id of vpn_gateway_connection" 
   vpn_gateway_id = "vpn_gateway_id of vpn_gateway_connection" 
   vpn_link = "vpn_link of vpn_gateway_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created. | 
| **var.remote_vpn_site_id** | string | True | -  |  The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created. | 
| **var.vpn_gateway_id** | string | True | -  |  The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created. | 
| **var.vpn_link** | block | True | -  |  One or more `vpn_link` blocks. | 
| **var.internet_security_enabled** | bool | False | `False`  |  Whether Internet Security is enabled for this VPN Connection. Defaults to `false`. | 
| **var.routing** | block | False | -  |  A `routing` block. If this is not specified, there will be a default route table created implicitly. | 
| **var.traffic_selector_policy** | block | False | -  |  One or more `traffic_selector_policy` blocks. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Gateway Connection. | 

Additionally, all variables are provided as outputs.
