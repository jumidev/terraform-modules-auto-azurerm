# azurerm_local_network_gateway

Manages a local network gateway connection over which specific connections can be configured.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the local network gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location/region where the local network gateway is created. Changing this forces a new resource to be created. | 
| **address_space** | string | False | -  |  -  | The list of string CIDRs representing the address spaces the gateway exposes. | 
| **bgp_settings** | block | False | -  |  -  | A `bgp_settings` block containing the Local Network Gateway's BGP speaker settings. | 
| **gateway_address** | string | False | -  |  -  | The gateway IP address to connect with. | 
| **gateway_fqdn** | string | False | -  |  -  | The gateway FQDN to connect with. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

