# azurerm_express_route_circuit_peering

Manages an ExpressRoute Circuit Peering.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.peering_type** | string | True | -  |  The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`. | 
| **var.express_route_circuit_name** | string | True | -  |  The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created. | 
| **var.vlan_id** | string | True | -  |  A valid VLAN ID to establish this peering on. | 
| **var.primary_peer_address_prefix** | string | False | -  |  A `/30` subnet for the primary link. Required when config for IPv4. | 
| **var.secondary_peer_address_prefix** | string | False | -  |  A `/30` subnet for the secondary link. Required when config for IPv4. | 
| **var.ipv4_enabled** | bool | False | `True`  |  A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`. | 
| **var.shared_key** | string | False | -  |  The shared key. Can be a maximum of 25 characters. | 
| **var.peer_asn** | string | False | -  |  The Either a 16-bit or a 32-bit ASN. Can either be public or private. | 
| **var.microsoft_peering_config** | block | False | -  |  A `microsoft_peering_config` block. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4. | 
| **var.ipv6** | block | False | -  |  A `ipv6` block. | 
| **var.route_filter_id** | string | False | -  |  The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **peering_type** | string  | - | 
| **express_route_circuit_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **vlan_id** | string  | - | 
| **primary_peer_address_prefix** | string  | - | 
| **secondary_peer_address_prefix** | string  | - | 
| **ipv4_enabled** | bool  | - | 
| **shared_key** | string  | - | 
| **peer_asn** | string  | - | 
| **microsoft_peering_config** | block  | - | 
| **ipv6** | block  | - | 
| **route_filter_id** | string  | - | 
| **id** | string  | The ID of the ExpressRoute Circuit Peering. | 
| **azure_asn** | string  | The ASN used by Azure. | 
| **primary_azure_port** | string  | The Primary Port used by Azure for this Peering. | 
| **secondary_azure_port** | string  | The Secondary Port used by Azure for this Peering. | 