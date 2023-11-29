# azurerm_express_route_gateway

Manages an ExpressRoute gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | True | -  |  -  | The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created. | 
| **scale_units** | int | True | -  |  -  | The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps). | 
| **allow_non_virtual_wan_traffic** | bool | False | `False`  |  -  | Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

