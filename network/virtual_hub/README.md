# azurerm_virtual_hub

Manages a Virtual Hub within a Virtual WAN.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub" 
}

inputs = {
   name = "name of virtual_hub" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **name** | string |  The name of the Virtual Hub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **address_prefix** | string |  -  |  -  |  The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation). | 
| **hub_routing_preference** | string |  `ExpressRoute`  |  `ExpressRoute`, `ASPath`, `VpnGateway`  |  The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`. | 
| **route** | [block](#route-block-structure) |  -  |  -  |  One or more `route` blocks. | 
| **sku** | string |  -  |  `Basic`, `Standard`  |  The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created. | 
| **virtual_wan_id** | string |  -  |  -  |  The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Virtual Hub. | 

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_prefixes` | list | Yes | - | A list of Address Prefixes. |
| `next_hop_ip_address` | string | Yes | - | The IP Address that Packets should be forwarded to as the Next Hop. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub. | 
| **default_route_table_id** | string | No  | The ID of the default Route Table in the Virtual Hub. | 
| **virtual_router_asn** | int | No  | The Autonomous System Number of the Virtual Hub BGP router. | 
| **virtual_router_ips** | string | No  | The IP addresses of the Virtual Hub BGP router. | 
| **virtual_router_auto_scale_min_capacity** | string | No  | Minimum instance capacity for the scaling configuration of the Virtual Hub Router. | 

Additionally, all variables are provided as outputs.
