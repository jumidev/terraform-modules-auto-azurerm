# azurerm_virtual_hub

Manages a Virtual Hub within a Virtual WAN.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Virtual Hub. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Virtual Hub should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Virtual Hub should exist. Changing this forces a new resource to be created. | 
| **address_prefix** | string | False | -  |  -  | The Address Prefix which should be used for this Virtual Hub. Changing this forces a new resource to be created. [The address prefix subnet cannot be smaller than a `/24`. Azure recommends using a `/23`](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-the-recommended-hub-address-space-during-hub-creation). | 
| **hub_routing_preference** | string | False | `ExpressRoute`  |  `ExpressRoute`, `ASPath`, `VpnGateway`  | The hub routing preference. Possible values are `ExpressRoute`, `ASPath` and `VpnGateway`. Defaults to `ExpressRoute`. | 
| **route** | block | False | -  |  -  | One or more `route` blocks. | 
| **sku** | string | False | -  |  `Basic`, `Standard`  | The SKU of the Virtual Hub. Possible values are `Basic` and `Standard`. Changing this forces a new resource to be created. | 
| **virtual_wan_id** | string | False | -  |  -  | The ID of a Virtual WAN within which the Virtual Hub should be created. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Virtual Hub. | 

