# azurerm_express_route_port_authorization



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/express_route_port_authorization"   
}

inputs = {
   name = "The name of the ExpressRoute Port"   
   resource_group_name = "${resource_group}"   
   # express_route_port_name → set in component_inputs
}

component_inputs = {
   express_route_port_name = "path/to/express_route_port_component:name"   
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
| **name** | string |  The name of the ExpressRoute Port. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the ExpressRoute Port. Changing this forces a new resource to be created. | 
| **express_route_port_name** | string |  The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **express_route_port_name** | string | No  | The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the ExpressRoute Port Authorization. | 
| **authorization_key** | string | No  | The Authorization Key. | 
| **authorization_use_status** | string | No  | The authorization use status. | 

Additionally, all variables are provided as outputs.
