# azurerm_vpn_gateway

Manages a VPN Gateway within a Virtual Hub, which enables Site-to-Site communication.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **var.bgp_route_translation_for_nat_enabled** | bool | False | `False`  |  Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`. | 
| **var.bgp_settings** | block | False | -  |  A `bgp_settings` block. | 
| **var.routing_preference** | string | False | -  |  Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Changing this forces a new resource to be created. | 
| **var.scale_unit** | string | False | `1`  |  The Scale Unit for this VPN Gateway. Defaults to `1`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the VPN Gateway. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **bgp_route_translation_for_nat_enabled** | bool  | - | 
| **bgp_settings** | block  | - | 
| **routing_preference** | string  | - | 
| **scale_unit** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the VPN Gateway. | 
| **bgp_settings** | block  | A `bgp_settings` block. | 
| **bgp_peering_address** | string  | The Address which should be used for the BGP Peering. | 
| **instance_0_bgp_peering_address** | block  | an `instance_bgp_peering_address` block. | 
| **instance_1_bgp_peering_address** | block  | an `instance_bgp_peering_address` block. | 
| **ip_configuration_id** | string  | The pre-defined id of VPN Gateway IP Configuration. | 
| **default_ips** | string  | The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration. | 
| **tunnel_ips** | string  | The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration. | 