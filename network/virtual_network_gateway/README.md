# azurerm_virtual_network_gateway

Manages a Virtual Network Gateway to establish secure, cross-premises connectivity.-> **Note:** Please be aware that provisioning a Virtual Network Gateway takes a long time (between 30 minutes and 1 hour)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network_gateway"   
}

inputs = {
   ip_configuration = "One or more (up to 3) `ip_configuration` blocks documented below..."   
   location = "${location}"   
   name = "The name of the Virtual Network Gateway"   
   resource_group_name = "${resource_group}"   
   sku = "Configuration of the size and capacity of the virtual network gateway..."   
   type = "The type of the Virtual Network Gateway"   
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
| **ip_configuration** | string |  -  |  One or more (up to 3) `ip_configuration` blocks documented below. An active-standby gateway requires exactly one `ip_configuration` block, an active-active gateway requires exactly two `ip_configuration` blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three `ip_configuration` blocks. | 
| **location** | string |  -  |  The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created. | 
| **name** | string |  -  |  The name of the Virtual Network Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created. | 
| **sku** | string |  `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`, `VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`, `VpnGw4AZ`, `VpnGw5AZ`, `type`, `vpn_type`, `generation`, `PolicyBased`, `ExpressRoute`  |  Configuration of the size and capacity of the virtual network gateway. Valid options are `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`,`VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`,`VpnGw4AZ` and `VpnGw5AZ` and depend on the `type`, `vpn_type` and `generation` arguments. A `PolicyBased` gateway only supports the `Basic` SKU. Further, the `UltraPerformance` SKU is only supported by an `ExpressRoute` gateway. | 
| **type** | string |  `Vpn`, `ExpressRoute`  |  The type of the Virtual Network Gateway. Valid options are `Vpn` or `ExpressRoute`. Changing the type forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **active_active** | bool |  `False`  |  -  |  If `true`, an active-active Virtual Network Gateway will be created. An active-active gateway requires a `HighPerformance` or an `UltraPerformance` SKU. If `false`, an active-standby gateway will be created. Defaults to `false`. | 
| **default_local_network_gateway_id** | string |  -  |  -  |  The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (*forced tunnelling*). Refer to the [Azure documentation on forced tunnelling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm). If not specified, forced tunnelling is disabled. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created. | 
| **enable_bgp** | bool |  `False`  |  -  |  If `true`, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to `false`. | 
| **bgp_settings** | [block](#bgp_settings-block-structure) |  -  |  -  |  A `bgp_settings` block which is documented below. In this block the BGP specific settings can be defined. | 
| **custom_route** | [block](#custom_route-block-structure) |  -  |  -  |  A `custom_route` block. Specifies a custom routes address space for a virtual network gateway and a VpnClient. | 
| **generation** | string |  -  |  `Generation1`, `Generation2`, `None`  |  The Generation of the Virtual Network gateway. Possible values include `Generation1`, `Generation2` or `None`. Changing this forces a new resource to be created. | 
| **private_ip_address_enabled** | bool |  -  |  -  |  Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created. | 
| **bgp_route_translation_for_nat_enabled** | bool |  `False`  |  -  |  Is BGP Route Translation for NAT enabled? Defaults to `false`. | 
| **dns_forwarding_enabled** | bool |  -  |  -  |  Is DNS forwarding enabled? | 
| **ip_sec_replay_protection_enabled** | bool |  `True`  |  -  |  Is IP Sec Replay Protection enabled? Defaults to `true`. | 
| **policy_group** | [block](#policy_group-block-structure) |  -  |  -  |  One or more `policy_group` blocks. | 
| **remote_vnet_traffic_enabled** | bool |  `False`  |  -  |  Is remote vnet traffic that is used to configure this gateway to accept traffic from other Azure Virtual Networks enabled? Defaults to `false`. | 
| **virtual_wan_traffic_enabled** | bool |  `False`  |  -  |  Is remote vnet traffic that is used to configure this gateway to accept traffic from remote Virtual WAN networks enabled? Defaults to `false`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **vpn_client_configuration** | [block](#vpn_client_configuration-block-structure) |  -  |  -  |  A `vpn_client_configuration` block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections. | 
| **vpn_type** | string |  `RouteBased`  |  `RouteBased`, `PolicyBased`  |  The routing type of the Virtual Network Gateway. Valid options are `RouteBased` or `PolicyBased`. Defaults to `RouteBased`. Changing this forces a new resource to be created. | 

### `ipsec_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dh_group` | string | Yes | - | The DH Group, used in IKE Phase 1. Possible values are 'DHGroup1', 'DHGroup2', 'DHGroup14', 'DHGroup24', 'DHGroup2048', 'ECP256', 'ECP384' and 'None'. |
| `ike_encryption` | string | Yes | - | The IKE encryption algorithm, used for IKE Phase 2. Possible values are 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128' and 'GCMAES256'. |
| `ike_integrity` | string | Yes | - | The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values are 'GCMAES128', 'GCMAES256', 'MD5', 'SHA1', 'SHA256' and 'SHA384'. |
| `ipsec_encryption` | string | Yes | - | The IPSec encryption algorithm, used for IKE phase 1. Possible values are 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', 'GCMAES192', 'GCMAES256' and 'None'. |
| `ipsec_integrity` | string | Yes | - | The IPSec integrity algorithm, used for IKE phase 1. Possible values are 'GCMAES128', 'GCMAES192', 'GCMAES256', 'MD5', 'SHA1' and 'SHA256'. |
| `pfs_group` | string | Yes | - | The Pfs Group, used in IKE Phase 2. Possible values are 'ECP256', 'ECP384', 'PFS1', 'PFS2', 'PFS14', 'PFS24', 'PFS2048', 'PFSMM' and 'None'. |
| `sa_lifetime_in_seconds` | number | Yes | - | The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel. Possible values are between '300' and '172799'. |
| `sa_data_size_in_kilobytes` | number | Yes | - | The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel. Possible values are between '1024' and '2147483647'. |

### `bgp_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `asn` | string | No | - | The Autonomous System Number (ASN) to use as part of the BGP. |
| `peering_addresses` | [block](#peering_addresses-block-structure) | No | - | A list of 'peering_addresses' blocks. Only one 'peering_addresses' block can be specified except when 'active_active' of this Virtual Network Gateway is 'true'. |
| `peer_weight` | string | No | - | The weight added to routes which have been learned through BGP peering. Valid values can be between '0' and '100'. |

### `virtual_network_gateway_client_connection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Virtual Network Gateway Client Connection. |
| `policy_group_names` | list | Yes | - | A list of names of Virtual Network Gateway Policy Groups. |
| `address_prefixes` | list | Yes | - | A list of address prefixes for P2S VPN Client. |

### `policy_member` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Virtual Network Gateway Policy Group Member. |
| `type` | string | Yes | - | The VPN Policy Member attribute type. Possible values are 'AADGroupId', 'CertificateGroupId' and 'RadiusAzureGroupId'. |
| `value` | string | Yes | - | The value of attribute that is used for this Virtual Network Gateway Policy Group Member. |

### `custom_route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_prefixes` | list | No | - | A list of address blocks reserved for this virtual network in CIDR notation. |

### `policy_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Virtual Network Gateway Policy Group. |
| `policy_member` | [block](#policy_member-block-structure) | Yes | - | One or more 'policy_member' blocks. |
| `is_default` | bool | No | False | Is this a Default Virtual Network Gateway Policy Group? Defaults to 'false'. |
| `priority` | string | No | 0 | The priority for the Virtual Network Gateway Policy Group. Defaults to '0'. |

### `peering_addresses` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_configuration_name` | string | No | primary | The name of the IP configuration of this Virtual Network Gateway. In case there are multiple 'ip_configuration' blocks defined, this property is **required** to specify. |
| `apipa_addresses` | list | No | - | A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway. |

### `vpn_client_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_space` | string | Yes | - | The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation. |
| `aad_tenant` | string | No | - | AzureAD Tenant URL |
| `aad_audience` | string | No | - | The client id of the Azure VPN application. See [Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections](https://docs.microsoft.com/en-gb/azure/vpn-gateway/openvpn-azure-ad-tenant-multi-app) for values |
| `aad_issuer` | string | No | - | The STS url for your tenant |
| `ipsec_policy` | [block](#ipsec_policy-block-structure) | No | - | An 'ipsec_policy' block. |
| `root_certificate` | string | No | - | One or more 'root_certificate' blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway. |
| `revoked_certificate` | string | No | - | One or more 'revoked_certificate' blocks which are defined below. |
| `radius_server` | [block](#radius_server-block-structure) | No | - | One or more 'radius_server' blocks. |
| `radius_server_address` | string | No | - | The address of the Radius server. |
| `radius_server_secret` | string | No | - | The secret used by the Radius server. |
| `vpn_client_protocols` | string | No | - | List of the protocols supported by the vpn client. The supported values are 'SSTP', 'IkeV2' and 'OpenVPN'. Values 'SSTP' and 'IkeV2' are incompatible with the use of 'aad_tenant', 'aad_audience' and 'aad_issuer'. |
| `vpn_auth_types` | string | No | - | List of the vpn authentication types for the virtual network gateway. The supported values are 'AAD', 'Radius' and 'Certificate'. |
| `virtual_network_gateway_client_connection` | [block](#virtual_network_gateway_client_connection-block-structure) | No | - | One or more 'virtual_network_gateway_client_connection' blocks. |

### `radius_server` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address` | string | Yes | - | The address of the Radius Server. |
| `secret` | string | Yes | - | The secret that is used to communicate with the Radius Server. |
| `score` | number | Yes | - | The score of the Radius Server determines the priority of the server. Possible values are between '1' and '30'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Network Gateway. | 
| **bgp_settings** | string | No  | A block of `bgp_settings`. | 
| **peering_addresses** | list | No  | A list of `peering_addresses` as defined below. | 
| **default_addresses** | list | No  | A list of peering address assigned to the BGP peer of the Virtual Network Gateway. | 
| **tunnel_ip_addresses** | list | No  | A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway. | 

Additionally, all variables are provided as outputs.
