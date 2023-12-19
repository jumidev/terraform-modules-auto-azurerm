# azurerm_express_route_circuit_peering

Manages an ExpressRoute Circuit Peering.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/express_route_circuit_peering"   
}

inputs = {
   peering_type = "The type of the ExpressRoute Circuit Peering"   
   # express_route_circuit_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   # vlan_id → set in component_inputs
}

component_inputs = {
   express_route_circuit_name = "path/to/express_route_circuit_component:name"   
   vlan_id = "path/to/virtual_network_component:id"   
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
| **peering_type** | string |  The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`. | 
| **express_route_circuit_name** | string |  The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created. | 
| **vlan_id** | string |  A valid VLAN ID to establish this peering on. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **primary_peer_address_prefix** | string |  -  |  A `/30` subnet for the primary link. Required when config for IPv4. | 
| **secondary_peer_address_prefix** | string |  -  |  A `/30` subnet for the secondary link. Required when config for IPv4. | 
| **ipv4_enabled** | bool |  `True`  |  A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`. | 
| **shared_key** | string |  -  |  The shared key. Can be a maximum of 25 characters. | 
| **peer_asn** | string |  -  |  The Either a 16-bit or a 32-bit ASN. Can either be public or private. | 
| **microsoft_peering_config** | [block](#microsoft_peering_config-block-structure) |  -  |  A `microsoft_peering_config` block. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4. | 
| **ipv6** | [block](#ipv6-block-structure) |  -  |  A `ipv6` block. | 
| **route_filter_id** | string |  -  |  The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`. | 

### `microsoft_peering` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `advertised_public_prefixes` | list | No | - | A list of Advertised Public Prefixes. |
| `customer_asn` | string | No | 0 | The CustomerASN of the peering. Defaults to '0'. |
| `routing_registry_name` | string | No | NONE | The Routing Registry against which the AS number and prefixes are registered. For example: 'ARIN', 'RIPE', 'AFRINIC' etc. Defaults to 'NONE'. |
| `advertised_communities` | string | No | - | The communities of Bgp Peering specified for microsoft peering. |

### `ipv6` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `primary_peer_address_prefix` | string | Yes | - | A subnet for the primary link. |
| `secondary_peer_address_prefix` | string | Yes | - | A subnet for the secondary link. |
| `enabled` | bool | No | True | A boolean value indicating whether the IPv6 peering is enabled. Defaults to 'true'. |
| `microsoft_peering` | [block](#microsoft_peering-block-structure) | No | - | A 'microsoft_peering' block. |
| `route_filter_id` | string | No | - | The ID of the Route Filter. Only available when 'peering_type' is set to 'MicrosoftPeering'. |

### `microsoft_peering_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `advertised_public_prefixes` | list | Yes | - | A list of Advertised Public Prefixes. |
| `customer_asn` | string | No | 0 | The CustomerASN of the peering. Defaults to '0'. |
| `routing_registry_name` | string | No | NONE | The Routing Registry against which the AS number and prefixes are registered. For example: 'ARIN', 'RIPE', 'AFRINIC' etc. Defaults to 'NONE'. |
| `advertised_communities` | string | No | - | The communities of Bgp Peering specified for microsoft peering. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ExpressRoute Circuit Peering. | 
| **azure_asn** | string | No  | The ASN used by Azure. | 
| **primary_azure_port** | string | No  | The Primary Port used by Azure for this Peering. | 
| **secondary_azure_port** | string | No  | The Secondary Port used by Azure for this Peering. | 

Additionally, all variables are provided as outputs.
