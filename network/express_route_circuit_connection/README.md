# azurerm_express_route_circuit_connection

Manages an Express Route Circuit Connection.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created. | 
| **var.peering_id** | string | True | -  |  -  | The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created. | 
| **var.peer_peering_id** | string | True | -  |  -  | The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created. | 
| **var.address_prefix_ipv4** | string | True | -  |  -  | The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created. | 
| **var.authorization_key** | string | False | -  |  -  | The authorization key which is associated with the Express Route Circuit Connection. | 
| **var.address_prefix_ipv6** | string | False | -  |  -  | The IPv6 address space from which to allocate customer addresses for global reach. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **peering_id** | string  | - | 
| **peer_peering_id** | string  | - | 
| **address_prefix_ipv4** | string  | - | 
| **authorization_key** | string  | - | 
| **address_prefix_ipv6** | string  | - | 
| **id** | string  | The ID of the Express Route Circuit Connection. | 