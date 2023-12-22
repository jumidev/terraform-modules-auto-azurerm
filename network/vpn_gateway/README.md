# azurerm_vpn_gateway

Manages a VPN Gateway within a Virtual Hub, which enables Site-to-Site communication.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/vpn_gateway"   
}

inputs = {
   name = "The Name which should be used for this VPN Gateway"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # virtual_hub_id → set in component_inputs
}

component_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **bgp_route_translation_for_nat_enabled** | bool |  `False`  |  Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`. | 
| **bgp_settings** | [block](#bgp_settings-block-structure) |  -  |  A `bgp_settings` block. | 
| **routing_preference** | string |  -  |  Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Changing this forces a new resource to be created. | 
| **scale_unit** | string |  `1`  |  The Scale Unit for this VPN Gateway. Defaults to `1`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the VPN Gateway. | 

### `bgp_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `asn` | string | Yes | - | The ASN of the BGP Speaker. Changing this forces a new resource to be created. |
| `peer_weight` | string | Yes | - | The weight added to Routes learned from this BGP Speaker. Changing this forces a new resource to be created. |
| `instance_0_bgp_peering_address` | [block](#instance_bgp_peering_address-block-structure) | No | - | An 'instance_bgp_peering_address' block. |
| `instance_1_bgp_peering_address` | [block](#instance_bgp_peering_address-block-structure) | No | - | An 'instance_bgp_peering_address' block. |

### `instance_bgp_peering_address` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `custom_ips` | list | Yes | - | A list of custom BGP peering addresses to assign to this instance. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Gateway. | 
| **bgp_settings** | block | No  | A `bgp_settings` block. | 
| **bgp_peering_address** | string | No  | The Address which should be used for the BGP Peering. | 
| **instance_0_bgp_peering_address** | block | No  | an `instance_bgp_peering_address` block. | 
| **instance_1_bgp_peering_address** | block | No  | an `instance_bgp_peering_address` block. | 
| **ip_configuration_id** | string | No  | The pre-defined id of VPN Gateway IP Configuration. | 
| **default_ips** | string | No  | The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration. | 
| **tunnel_ips** | string | No  | The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration. | 

Additionally, all variables are provided as outputs.
