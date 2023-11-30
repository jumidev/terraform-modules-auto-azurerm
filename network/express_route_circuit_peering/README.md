# azurerm_express_route_circuit_peering

Manages an ExpressRoute Circuit Peering.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_circuit_peering" 
}

inputs = {
   peering_type = "peering_type of express_route_circuit_peering" 
   express_route_circuit_name = "express_route_circuit_name of express_route_circuit_peering" 
   resource_group_name = "${resource_group}" 
   vlan_id = "vlan_id of express_route_circuit_peering" 
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
| **var.peering_type** | string  The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`. | 
| **var.express_route_circuit_name** | string  The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created. | 
| **var.vlan_id** | string  A valid VLAN ID to establish this peering on. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.primary_peer_address_prefix** | string  -  |  A `/30` subnet for the primary link. Required when config for IPv4. | 
| **var.secondary_peer_address_prefix** | string  -  |  A `/30` subnet for the secondary link. Required when config for IPv4. | 
| **var.ipv4_enabled** | bool  `True`  |  A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`. | 
| **var.shared_key** | string  -  |  The shared key. Can be a maximum of 25 characters. | 
| **var.peer_asn** | string  -  |  The Either a 16-bit or a 32-bit ASN. Can either be public or private. | 
| **var.microsoft_peering_config** | block  -  |  A `microsoft_peering_config` block. Required when `peering_type` is set to `MicrosoftPeering` and config for IPv4. | 
| **var.ipv6** | block  -  |  A `ipv6` block. | 
| **var.route_filter_id** | string  -  |  The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`. | 

### `microsoft_peering_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `advertised_public_prefixes` | list | Yes | - | A list of Advertised Public Prefixes. |
| `customer_asn` | string | No | 0 | The CustomerASN of the peering. Defaults to '0'. |
| `routing_registry_name` | string | No | NONE | The Routing Registry against which the AS number and prefixes are registered. For example: 'ARIN', 'RIPE', 'AFRINIC' etc. Defaults to 'NONE'. |
| `advertised_communities` | string | No | - | The communities of Bgp Peering specified for microsoft peering. |

### `ipv6` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `primary_peer_address_prefix` | string | Yes | - | A subnet for the primary link. |
| `secondary_peer_address_prefix` | string | Yes | - | A subnet for the secondary link. |
| `enabled` | bool | No | True | A boolean value indicating whether the IPv6 peering is enabled. Defaults to 'true'. |
| `microsoft_peering` | block | No | - | A 'microsoft_peering' block. |
| `route_filter_id` | string | No | - | The ID of the Route Filter. Only available when 'peering_type' is set to 'MicrosoftPeering'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ExpressRoute Circuit Peering. | 
| **azure_asn** | string | No  | The ASN used by Azure. | 
| **primary_azure_port** | string | No  | The Primary Port used by Azure for this Peering. | 
| **secondary_azure_port** | string | No  | The Secondary Port used by Azure for this Peering. | 

Additionally, all variables are provided as outputs.
