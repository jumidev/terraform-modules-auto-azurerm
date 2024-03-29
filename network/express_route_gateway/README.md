# azurerm_express_route_gateway

Manages an ExpressRoute gateway.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/express_route_gateway"   
}

inputs = {
   name = "The name of the ExpressRoute gateway"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # virtual_hub_id → set in component_inputs
   scale_units = "The number of scale units with which to provision the ExpressRoute gateway..."   
}

component_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The name of the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created. | 
| **scale_units** | number |  The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps). | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **allow_non_virtual_wan_traffic** | bool |  `False`  |  Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the ExpressRoute gateway. ### Timeouts The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions: | 
| **create** | string | No  | (Defaults to 90 minutes) Used when creating the ExpressRoute Gateway. | 
| **update** | string | No  | (Defaults to 90 minutes) Used when updating the ExpressRoute Gateway. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the ExpressRoute Gateway. | 
| **delete** | string | No  | (Defaults to 90 minutes) Used when deleting the ExpressRoute Gateway. ## Import ExpressRoute Gateways can be imported using the `resource id`, e.g. ```shell terraform import azurerm_express_route_gateway.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRouteGateways/myExpressRouteGateway ``` | 

Additionally, all variables are provided as outputs.
