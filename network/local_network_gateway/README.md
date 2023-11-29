# azurerm_local_network_gateway

Manages a local network gateway connection over which specific connections can be configured.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the local network gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The location/region where the local network gateway is created. Changing this forces a new resource to be created. | 
| **var.address_space** | string | False | -  |  -  | The list of string CIDRs representing the address spaces the gateway exposes. | 
| **var.bgp_settings** | block | False | -  |  -  | A `bgp_settings` block containing the Local Network Gateway's BGP speaker settings. | 
| **var.gateway_address** | string | False | -  |  -  | The gateway IP address to connect with. | 
| **var.gateway_fqdn** | string | False | -  |  -  | The gateway FQDN to connect with. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **address_space** | string  | - | 
| **bgp_settings** | block  | - | 
| **gateway_address** | string  | - | 
| **gateway_fqdn** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Local Network Gateway. | 