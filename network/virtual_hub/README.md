# azurerm_virtual_hub

Manages a Virtual Hub within a Virtual WAN.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created. | 
| **var.address_prefix** | string | False | -  |  -  |  The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation). | 
| **var.hub_routing_preference** | string | False | `ExpressRoute`  |  `ExpressRoute`, `ASPath`, `VpnGateway`  |  The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`. | 
| **var.route** | block | False | -  |  -  |  One or more `route` blocks. | 
| **var.sku** | string | False | -  |  `Basic`, `Standard`  |  The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created. | 
| **var.virtual_wan_id** | string | False | -  |  -  |  The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Virtual Hub. | 

### `route` block structure

> `address_prefixes` (list): (REQUIRED) A list of Address Prefixes.\
> `next_hop_ip_address` (string): (REQUIRED) The IP Address that Packets should be forwarded to as the Next Hop.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub. | 
| **default_route_table_id** | string | No  | The ID of the default Route Table in the Virtual Hub. | 
| **virtual_router_asn** | int | No  | The Autonomous System Number of the Virtual Hub BGP router. | 
| **virtual_router_ips** | string | No  | The IP addresses of the Virtual Hub BGP router. | 
| **virtual_router_auto_scale_min_capacity** | string | No  | Minimum instance capacity for the scaling configuration of the Virtual Hub Router. | 

Additionally, all variables are provided as outputs.
