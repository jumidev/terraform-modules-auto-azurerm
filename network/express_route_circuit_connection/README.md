# azurerm_express_route_circuit_connection

Manages an Express Route Circuit Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/express_route_circuit_connection"   
}

inputs = {
   name = "The name which should be used for this Express Route Circuit Connection..."   
   # peering_id → set in component_inputs
   peer_peering_id = "The ID of the peered Express Route Circuit Private Peering..."   
   address_prefix_ipv4 = "The IPv4 address space from which to allocate customer address for global reach..."   
}

component_inputs = {
   peering_id = "path/to/express_route_circuit_peering_component:id"   
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
| **name** | string |  The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created. | 
| **peering_id** | string |  The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created. | 
| **peer_peering_id** | string |  The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created. | 
| **address_prefix_ipv4** | string |  The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **authorization_key** | string |  The authorization key which is associated with the Express Route Circuit Connection. | 
| **address_prefix_ipv6** | string |  The IPv6 address space from which to allocate customer addresses for global reach. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Express Route Circuit Connection. | 

Additionally, all variables are provided as outputs.
