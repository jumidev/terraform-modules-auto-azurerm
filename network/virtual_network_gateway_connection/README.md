# azurerm_virtual_network_gateway_connection

Manages a connection in an existing Virtual Network Gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the connection. Changing the name forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the connection Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location/region where the connection is located. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  `IPsec`, `ExpressRoute`, `Vnet2Vnet`  | The type of connection. Valid options are `IPsec` (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet). Each connection type requires different mandatory arguments (refer to the examples above). Changing this forces a new resource to be created. | 
| **virtual_network_gateway_id** | string | True | -  |  -  | The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created. | 
| **authorization_key** | string | False | -  |  -  | The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection. | 
| **dpd_timeout_seconds** | int | False | -  |  -  | The dead peer detection timeout of this connection in seconds. Changing this forces a new resource to be created. | 
| **express_route_circuit_id** | string | False | -  |  -  | The ID of the Express Route Circuit when creating an ExpressRoute connection (i.e. when `type` is `ExpressRoute`). The Express Route Circuit can be in the same or in a different subscription. Changing this forces a new resource to be created. | 
| **peer_virtual_network_gateway_id** | string | False | -  |  -  | The ID of the peer virtual network gateway when creating a VNet-to-VNet connection (i.e. when `type` is `Vnet2Vnet`). The peer Virtual Network Gateway can be in the same or in a different subscription. Changing this forces a new resource to be created. | 
| **local_azure_ip_address_enabled** | bool | False | -  |  -  | Use private local Azure IP for the connection. Changing this forces a new resource to be created. | 
| **local_network_gateway_id** | string | False | -  |  -  | The ID of the local network gateway when creating Site-to-Site connection (i.e. when `type` is `IPsec`). | 
| **routing_weight** | string | False | `10`  |  -  | The routing weight. Defaults to `10`. | 
| **shared_key** | string | False | -  |  -  | The shared IPSec key. A key could be provided if a Site-to-Site, VNet-to-VNet or ExpressRoute connection is created. | 
| **connection_mode** | string | False | `Default`  |  `Default`, `InitiatorOnly`, `ResponderOnly`  | Connection mode to use. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`. Changing this value will force a resource to be created. | 
| **connection_protocol** | string | False | `IKEv2`  |  `IKEv1`, `IKEv2`  | The IKE protocol version to use. Possible values are `IKEv1` and `IKEv2`, values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`. Changing this forces a new resource to be created. -> **Note:** Only valid for `IPSec` connections on virtual network gateways with SKU `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw1AZ`, `VpnGw2AZ` or `VpnGw3AZ`. | 
| **enable_bgp** | bool | False | `False`  |  -  | If `true`, BGP (Border Gateway Protocol) is enabled for this connection. Defaults to `false`. | 
| **custom_bgp_addresses** | block | False | -  |  -  | A `custom_bgp_addresses` block which is documented below. The block can only be used on `IPSec` / `activeactive` connections, For details about see [the relevant section in the Azure documentation](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-aws-bgp). | 
| **express_route_gateway_bypass** | string | False | -  |  -  | If `true`, data packets will bypass ExpressRoute Gateway for data forwarding This is only valid for ExpressRoute connections. | 
| **egress_nat_rule_ids** | list | False | -  |  -  | A list of the egress NAT Rule Ids. | 
| **ingress_nat_rule_ids** | list | False | -  |  -  | A list of the ingress NAT Rule Ids. | 
| **use_policy_based_traffic_selectors** | bool | False | `False`  |  -  | If `true`, policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an `ipsec_policy` block. Defaults to `false`. | 
| **ipsec_policy** | block | False | -  |  -  | A `ipsec_policy` block which is documented below. Only a single policy can be defined for a connection. For details on custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell). | 
| **traffic_selector_policy** | list | False | -  |  -  | One or more `traffic_selector_policy` blocks which are documented below. A `traffic_selector_policy` allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection. For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps). | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

