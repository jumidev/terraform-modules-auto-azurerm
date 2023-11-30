# azurerm_express_route_gateway

Manages an ExpressRoute gateway.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_gateway" 
}

inputs = {
   name = "name of express_route_gateway" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   virtual_hub_id = "virtual_hub_id of express_route_gateway" 
   scale_units = "scale_units of express_route_gateway" 
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
| **var.name** | string |  The name of the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string |  The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created. | 
| **var.scale_units** | int |  The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps). | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.allow_non_virtual_wan_traffic** | bool |  `False`  |  Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`. | 
| **var.tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ExpressRoute gateway. | 
| **create** | string | No  | (Defaults to 90 minutes) Used when creating the ExpressRoute Gateway. | 
| **update** | datetime | No  | (Defaults to 90 minutes) Used when updating the ExpressRoute Gateway. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the ExpressRoute Gateway. | 
| **delete** | string | No  | (Defaults to 90 minutes) Used when deleting the ExpressRoute Gateway. | 

Additionally, all variables are provided as outputs.
