# azurerm_virtual_network_gateway

Manages a Virtual Network Gateway to establish secure, cross-premises connectivity.-> **Note:** Please be aware that provisioning a Virtual Network Gateway takes a long time (between 30 minutes and 1 hour)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **ip_configuration** | list | True | -  |  -  | One or more (up to 3) `ip_configuration` blocks documented below. An active-standby gateway requires exactly one `ip_configuration` block, an active-active gateway requires exactly two `ip_configuration` blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three `ip_configuration` blocks. | 
| **location** | string | True | -  |  -  | The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name of the Virtual Network Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`, `VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`, `VpnGw4AZ`, `VpnGw5AZ`, `type`, `vpn_type`, `generation`, `PolicyBased`, `ExpressRoute`  | Configuration of the size and capacity of the virtual network gateway. Valid options are `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`,`VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`,`VpnGw4AZ` and `VpnGw5AZ` and depend on the `type`, `vpn_type` and `generation` arguments. A `PolicyBased` gateway only supports the `Basic` SKU. Further, the `UltraPerformance` SKU is only supported by an `ExpressRoute` gateway. | 
| **type** | string | True | -  |  `Vpn`, `ExpressRoute`  | The type of the Virtual Network Gateway. Valid options are `Vpn` or `ExpressRoute`. Changing the type forces a new resource to be created. | 
| **active_active** | bool | False | `False`  |  -  | If `true`, an active-active Virtual Network Gateway will be created. An active-active gateway requires a `HighPerformance` or an `UltraPerformance` SKU. If `false`, an active-standby gateway will be created. Defaults to `false`. | 
| **default_local_network_gateway_id** | string | False | -  |  -  | The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (*forced tunnelling*). Refer to the [Azure documentation on forced tunnelling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm). If not specified, forced tunnelling is disabled. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created. | 
| **enable_bgp** | bool | False | `False`  |  -  | If `true`, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to `false`. | 
| **bgp_settings** | block | False | -  |  -  | A `bgp_settings` block which is documented below. In this block the BGP specific settings can be defined. | 
| **custom_route** | block | False | -  |  -  | A `custom_route` block. Specifies a custom routes address space for a virtual network gateway and a VpnClient. | 
| **generation** | string | False | -  |  `Generation1`, `Generation2`, `None`  | The Generation of the Virtual Network gateway. Possible values include `Generation1`, `Generation2` or `None`. Changing this forces a new resource to be created. | 
| **private_ip_address_enabled** | bool | False | -  |  -  | Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **vpn_client_configuration** | block | False | -  |  -  | A `vpn_client_configuration` block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections. | 
| **vpn_type** | string | False | `RouteBased`  |  `RouteBased`, `PolicyBased`  | The routing type of the Virtual Network Gateway. Valid options are `RouteBased` or `PolicyBased`. Defaults to `RouteBased`. Changing this forces a new resource to be created. | 

