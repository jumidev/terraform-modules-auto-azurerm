# azurerm_express_route_circuit_peering

Manages an ExpressRoute Circuit Peering.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **peering_type** | string | True | -  |  -  | The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`. | 
| **express_route_circuit_name** | string | True | -  |  -  | The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created. | 
| **vlan_id** | string | True | -  |  -  | A valid VLAN ID to establish this peering on. | 
| **primary_peer_address_prefix** | string | False | -  |  -  | A `/30` subnet for the primary link. Required when config for IPv4. | 
| **secondary_peer_address_prefix** | string | False | -  |  -  | A `/30` subnet for the secondary link. Required when config for IPv4. | 
| **ipv4_enabled** | bool | False | `True`  |  -  | A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`. | 
| **shared_key** | string | False | -  |  -  | The shared key. Can be a maximum of 25 characters. | 
| **peer_asn** | string | False | -  |  -  | The Either a 16-bit or a 32-bit ASN. Can either be public or private. | 
| **microsoft_peering_config** | block | False | -  |  -  | A `microsoft_peering_config` block. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4. | 
| **ipv6** | block | False | -  |  -  | A `ipv6` block. | 
| **route_filter_id** | string | False | -  |  -  | The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`. | 

