# azurerm_virtual_network_gateway_connection



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network_gateway_connection"   
}
inputs = {
   name = "The name of the connection"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   type = "The type of connection"   
   # virtual_network_gateway_id → set in component_inputs
}
component_inputs = {
   virtual_network_gateway_id = "path/to/virtual_network_gateway_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the connection. Changing the name forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the connection Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The location/region where the connection is located. Changing this forces a new resource to be created. | 
| **type** | string |  `IPsec`, `ExpressRoute`, `Vnet2Vnet`  |  The type of connection. Valid options are `IPsec` (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet). Each connection type requires different mandatory arguments (refer to the examples above). Changing this forces a new resource to be created. | 
| **virtual_network_gateway_id** | string |  -  |  The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **authorization_key** | string |  -  |  -  |  The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection. | 
| **dpd_timeout_seconds** | number |  -  |  -  |  The dead peer detection timeout of this connection in seconds. Changing this forces a new resource to be created. | 
| **express_route_circuit_id** | string |  -  |  -  |  The ID of the Express Route Circuit when creating an ExpressRoute connection (i.e. when `type` is `ExpressRoute`). The Express Route Circuit can be in the same or in a different subscription. Changing this forces a new resource to be created. | 
| **peer_virtual_network_gateway_id** | string |  -  |  -  |  The ID of the peer virtual network gateway when creating a VNet-to-VNet connection (i.e. when `type` is `Vnet2Vnet`). The peer Virtual Network Gateway can be in the same or in a different subscription. Changing this forces a new resource to be created. | 
| **local_azure_ip_address_enabled** | bool |  -  |  -  |  Use private local Azure IP for the connection. Changing this forces a new resource to be created. | 
| **local_network_gateway_id** | string |  -  |  -  |  The ID of the local network gateway when creating Site-to-Site connection (i.e. when `type` is `IPsec`). | 
| **routing_weight** | string |  `10`  |  -  |  The routing weight. Defaults to `10`. | 
| **shared_key** | string |  -  |  -  |  The shared IPSec key. A key could be provided if a Site-to-Site, VNet-to-VNet or ExpressRoute connection is created. | 
| **connection_mode** | string |  `Default`  |  `Default`, `InitiatorOnly`, `ResponderOnly`  |  Connection mode to use. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`. Changing this value will force a resource to be created. | 
| **connection_protocol** | string |  `IKEv2`  |  `IKEv1`, `IKEv2`  |  The IKE protocol version to use. Possible values are `IKEv1` and `IKEv2`, values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`. Changing this forces a new resource to be created. -> **Note:** Only valid for `IPSec` connections on virtual network gateways with SKU `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw1AZ`, `VpnGw2AZ` or `VpnGw3AZ`. | 
| **enable_bgp** | bool |  `False`  |  -  |  If `true`, BGP (Border Gateway Protocol) is enabled for this connection. Defaults to `false`. | 
| **custom_bgp_addresses** | [block](#custom_bgp_addresses-block-structure) |  -  |  -  |  A `custom_bgp_addresses` block which is documented below. The block can only be used on `IPSec` / `activeactive` connections, For details about see [the relevant section in the Azure documentation](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-aws-bgp). | 
| **express_route_gateway_bypass** | string |  -  |  -  |  If `true`, data packets will bypass ExpressRoute Gateway for data forwarding This is only valid for ExpressRoute connections. | 
| **private_link_fast_path_enabled** | bool |  `False`  |  -  |  Bypass the Express Route gateway when accessing private-links. When enabled `express_route_gateway_bypass` must be set to `true`. Defaults to `false`. | 
| **egress_nat_rule_ids** | list |  -  |  -  |  A list of the egress NAT Rule Ids. | 
| **ingress_nat_rule_ids** | list |  -  |  -  |  A list of the ingress NAT Rule Ids. | 
| **use_policy_based_traffic_selectors** | bool |  `False`  |  -  |  If `true`, policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an `ipsec_policy` block. Defaults to `false`. | 
| **ipsec_policy** | [block](#ipsec_policy-block-structure) |  -  |  -  |  A `ipsec_policy` block which is documented below. Only a single policy can be defined for a connection. For details on custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell). | 
| **traffic_selector_policy** | string |  -  |  -  |  One or more `traffic_selector_policy` blocks which are documented below. A `traffic_selector_policy` allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection. For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps). | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `custom_bgp_addresses` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `primary` | string | Yes | - | single IP address that is part of the 'azurerm_virtual_network_gateway' ip_configuration (first one) |
| `secondary` | string | No | - | single IP address that is part of the 'azurerm_virtual_network_gateway' ip_configuration (second one) |

### `ipsec_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dh_group` | string | Yes | - | The DH group used in IKE phase 1 for initial SA. Valid options are 'DHGroup1', 'DHGroup14', 'DHGroup2', 'DHGroup2048', 'DHGroup24', 'ECP256', 'ECP384', or 'None'. |
| `ike_encryption` | string | Yes | - | The IKE encryption algorithm. Valid options are 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', or 'GCMAES256'. |
| `ike_integrity` | string | Yes | - | The IKE integrity algorithm. Valid options are 'GCMAES128', 'GCMAES256', 'MD5', 'SHA1', 'SHA256', or 'SHA384'. |
| `ipsec_encryption` | string | Yes | - | The IPSec encryption algorithm. Valid options are 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', 'GCMAES192', 'GCMAES256', or 'None'. |
| `ipsec_integrity` | string | Yes | - | The IPSec integrity algorithm. Valid options are 'GCMAES128', 'GCMAES192', 'GCMAES256', 'MD5', 'SHA1', or 'SHA256'. |
| `pfs_group` | string | Yes | - | The DH group used in IKE phase 2 for new child SA. Valid options are 'ECP256', 'ECP384', 'PFS1', 'PFS14', 'PFS2', 'PFS2048', 'PFS24', 'PFSMM', or 'None'. |
| `sa_datasize` | string | No | 102400000 | The IPSec SA payload size in KB. Must be at least '1024' KB. Defaults to '102400000' KB. |
| `sa_lifetime` | string | No | 27000 | The IPSec SA lifetime in seconds. Must be at least '300' seconds. Defaults to '27000' seconds. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **remote_address_cidrs** | string | No  | List of remote CIDRs. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Network Gateway Connection. | 

Additionally, all variables are provided as outputs.
