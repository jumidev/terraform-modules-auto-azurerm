# azurerm_vpn_gateway

Manages a VPN Gateway within a Virtual Hub, which enables Site-to-Site communication.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | True | -  |  -  | The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **bgp_route_translation_for_nat_enabled** | bool | False | `False`  |  -  | Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`. | 
| **bgp_settings** | block | False | -  |  -  | A `bgp_settings` block. | 
| **routing_preference** | string | False | -  |  -  | Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Changing this forces a new resource to be created. | 
| **scale_unit** | string | False | `1`  |  -  | The Scale Unit for this VPN Gateway. Defaults to `1`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the VPN Gateway. | 

