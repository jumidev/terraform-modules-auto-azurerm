# azurerm_express_route_circuit_connection

Manages an Express Route Circuit Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created. | 
| **peering_id** | string | True | -  |  -  | The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created. | 
| **peer_peering_id** | string | True | -  |  -  | The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created. | 
| **address_prefix_ipv4** | string | True | -  |  -  | The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created. | 
| **authorization_key** | string | False | -  |  -  | The authorization key which is associated with the Express Route Circuit Connection. | 
| **address_prefix_ipv6** | string | False | -  |  -  | The IPv6 address space from which to allocate customer addresses for global reach. | 

