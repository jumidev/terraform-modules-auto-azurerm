# azurerm_vpn_gateway

Manages a VPN Gateway within a Virtual Hub, which enables Site-to-Site communication.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_gateway" 
}

inputs = {
   name = "name of vpn_gateway" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   virtual_hub_id = "virtual_hub_id of vpn_gateway" 
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
| **var.name** | string | True | -  |  The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created. | 
| **var.bgp_route_translation_for_nat_enabled** | bool | False | `False`  |  Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`. | 
| **var.bgp_settings** | block | False | -  |  A `bgp_settings` block. | 
| **var.routing_preference** | string | False | -  |  Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Changing this forces a new resource to be created. | 
| **var.scale_unit** | string | False | `1`  |  The Scale Unit for this VPN Gateway. Defaults to `1`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the VPN Gateway. | 

### `bgp_settings` block structure

> `asn` (string): (REQUIRED) The ASN of the BGP Speaker. Changing this forces a new resource to be created.\
> `peer_weight` (string): (REQUIRED) The weight added to Routes learned from this BGP Speaker. Changing this forces a new resource to be created.\
> `instance_0_bgp_peering_address` (block): An 'instance_bgp_peering_address' block.\
> `instance_1_bgp_peering_address` (block): An 'instance_bgp_peering_address' block.\



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
