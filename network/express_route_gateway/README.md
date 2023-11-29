# azurerm_express_route_gateway

Manages an ExpressRoute gateway.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created. | 
| **var.scale_units** | int | True | -  |  The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps). | 
| **var.allow_non_virtual_wan_traffic** | bool | False | `False`  |  Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **scale_units** | int  | - | 
| **allow_non_virtual_wan_traffic** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the ExpressRoute gateway. | 
| **create** | string  | (Defaults to 90 minutes) Used when creating the ExpressRoute Gateway. | 
| **update** | datetime  | (Defaults to 90 minutes) Used when updating the ExpressRoute Gateway. | 
| **read** | string  | (Defaults to 5 minutes) Used when retrieving the ExpressRoute Gateway. | 
| **delete** | string  | (Defaults to 90 minutes) Used when deleting the ExpressRoute Gateway. | 