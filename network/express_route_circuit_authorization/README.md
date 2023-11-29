# azurerm_express_route_circuit_authorization

Manages an ExpressRoute Circuit Authorization.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **var.express_route_circuit_name** | string | True | -  |  -  | The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **express_route_circuit_name** | string  | - | 
| **id** | string  | The ID of the ExpressRoute Circuit Authorization. | 
| **authorization_key** | string  | The Authorization Key. | 
| **authorization_use_status** | string  | The authorization use status. | 