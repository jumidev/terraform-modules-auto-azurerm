# azurerm_vpn_gateway_connection

Manages a VPN Gateway Connection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_gateway_connection" 
}

inputs = {
   name = "name of vpn_gateway_connection" 
   remote_vpn_site_id = "remote_vpn_site_id of vpn_gateway_connection" 
   vpn_gateway_id = "vpn_gateway_id of vpn_gateway_connection" 
   vpn_link = "vpn_link of vpn_gateway_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created. | 
| **var.remote_vpn_site_id** | string | True | -  |  The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created. | 
| **var.vpn_gateway_id** | string | True | -  |  The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created. | 
| **var.vpn_link** | block | True | -  |  One or more `vpn_link` blocks. | 
| `vpn_link` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this VPN Link Connection. ||
|   egress_nat_rule_ids (list): A list of the egress NAT Rule Ids. ||
|   ingress_nat_rule_ids (list): A list of the ingress NAT Rule Ids. ||
|   vpn_site_link_id (string): (REQUIRED) The ID of the connected VPN Site Link. Changing this forces a new VPN Gateway Connection to be created. ||
|   bandwidth_mbps (int): The expected connection bandwidth in MBPS. Defaults to '10'. ||
|   bgp_enabled (bool): Should the BGP be enabled? Defaults to 'false'. Changing this forces a new VPN Gateway Connection to be created. ||
|   connection_mode (string): The connection mode of this VPN Link. Possible values are 'Default', 'InitiatorOnly' and 'ResponderOnly'. Defaults to 'Default'. ||
|   ipsec_policy (list): One or more 'ipsec_policy' blocks. ||
|   protocol (string): The protocol used for this VPN Link Connection. Possible values are 'IKEv1' and 'IKEv2'. Defaults to 'IKEv2'. ||
|   ratelimit_enabled (bool): Should the rate limit be enabled? Defaults to 'false'. ||
|   route_weight (string): Routing weight for this VPN Link Connection. Defaults to '0'. ||
|   shared_key (string): SharedKey for this VPN Link Connection. ||
|   local_azure_ip_address_enabled (bool): Whether to use local Azure IP to initiate connection? Defaults to 'false'. ||
|   policy_based_traffic_selector_enabled (bool): Whether to enable policy-based traffic selectors? Defaults to 'false'. ||
|   custom_bgp_address (block): One or more 'custom_bgp_address' blocks. ||
| **var.internet_security_enabled** | bool | False | `False`  |  Whether Internet Security is enabled for this VPN Connection. Defaults to `false`. | 
| **var.routing** | block | False | -  |  A `routing` block. If this is not specified, there will be a default route table created implicitly. | 
| `routing` block structure: || 
|   associated_route_table (string): (REQUIRED) The ID of the Route Table associated with this VPN Connection. ||
|   propagated_route_table (block): A 'propagated_route_table' block. ||
|   inbound_route_map_id (string): The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes. ||
|   outbound_route_map_id (string): The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes. ||
| **var.traffic_selector_policy** | block | False | -  |  One or more `traffic_selector_policy` blocks. | 
| `traffic_selector_policy` block structure: || 
|   local_address_ranges (list): (REQUIRED) A list of local address spaces in CIDR format for this VPN Gateway Connection. ||
|   remote_address_ranges (list): (REQUIRED) A list of remote address spaces in CIDR format for this VPN Gateway Connection. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Gateway Connection. | 

Additionally, all variables are provided as outputs.
