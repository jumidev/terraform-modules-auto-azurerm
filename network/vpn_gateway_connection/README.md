# azurerm_vpn_gateway_connection

Manages a VPN Gateway Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/vpn_gateway_connection"   
}

inputs = {
   name = "The name which should be used for this VPN Gateway Connection..."   
   # remote_vpn_site_id → set in tfstate_inputs
   # vpn_gateway_id → set in tfstate_inputs
   vpn_link = {
      this_vpn_link = {
         name = "..."         
         vpn_site_link_id = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   remote_vpn_site_id = "path/to/vpn_site_component:id"   
   vpn_gateway_id = "path/to/vpn_gateway_component:id"   
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
| **name** | string |  The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created. | 
| **remote_vpn_site_id** | string |  The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created. | 
| **vpn_gateway_id** | string |  The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created. | 
| **vpn_link** | [block](#vpn_link-block-structure) |  One or more `vpn_link` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **internet_security_enabled** | bool |  `False`  |  Whether Internet Security is enabled for this VPN Connection. Defaults to `false`. | 
| **routing** | [block](#routing-block-structure) |  -  |  A `routing` block. If this is not specified, there will be a default route table created implicitly. | 
| **traffic_selector_policy** | [block](#traffic_selector_policy-block-structure) |  -  |  One or more `traffic_selector_policy` blocks. | 

### `traffic_selector_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `local_address_ranges` | list | Yes | - | A list of local address spaces in CIDR format for this VPN Gateway Connection. |
| `remote_address_ranges` | list | Yes | - | A list of remote address spaces in CIDR format for this VPN Gateway Connection. |

### `vpn_link` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this VPN Link Connection. |
| `egress_nat_rule_ids` | list | No | - | A list of the egress NAT Rule Ids. |
| `ingress_nat_rule_ids` | list | No | - | A list of the ingress NAT Rule Ids. |
| `vpn_site_link_id` | string | Yes | - | The ID of the connected VPN Site Link. Changing this forces a new VPN Gateway Connection to be created. |
| `bandwidth_mbps` | int | No | 10 | The expected connection bandwidth in MBPS. Defaults to '10'. |
| `bgp_enabled` | bool | No | False | Should the BGP be enabled? Defaults to 'false'. Changing this forces a new VPN Gateway Connection to be created. |
| `connection_mode` | string | No | Default | The connection mode of this VPN Link. Possible values are 'Default', 'InitiatorOnly' and 'ResponderOnly'. Defaults to 'Default'. |
| `ipsec_policy` | list | No | - | One or more 'ipsec_policy' blocks. |
| `protocol` | string | No | IKEv2 | The protocol used for this VPN Link Connection. Possible values are 'IKEv1' and 'IKEv2'. Defaults to 'IKEv2'. |
| `ratelimit_enabled` | bool | No | False | Should the rate limit be enabled? Defaults to 'false'. |
| `route_weight` | string | No | 0 | Routing weight for this VPN Link Connection. Defaults to '0'. |
| `shared_key` | string | No | - | SharedKey for this VPN Link Connection. |
| `local_azure_ip_address_enabled` | bool | No | False | Whether to use local Azure IP to initiate connection? Defaults to 'false'. |
| `policy_based_traffic_selector_enabled` | bool | No | False | Whether to enable policy-based traffic selectors? Defaults to 'false'. |
| `custom_bgp_address` | [block](#custom_bgp_address-block-structure) | No | - | One or more 'custom_bgp_address' blocks. |

### `custom_bgp_address` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | Yes | - | The custom bgp ip address which belongs to the IP Configuration. |
| `ip_configuration_id` | string | Yes | - | The ID of the IP Configuration which belongs to the VPN Gateway. |

### `routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `associated_route_table` | string | Yes | - | The ID of the Route Table associated with this VPN Connection. |
| `propagated_route_table` | [block](#propagated_route_table-block-structure) | No | - | A 'propagated_route_table' block. |
| `inbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes. |
| `outbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes. |

### `propagated_route_table` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `route_table_ids` | list | Yes | - | A list of Route Table IDs to associated with this VPN Gateway Connection. |
| `labels` | list | No | - | A list of labels to assign to this route table. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Gateway Connection. | 

Additionally, all variables are provided as outputs.
