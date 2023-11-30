# azurerm_express_route_circuit_authorization

Manages an ExpressRoute Circuit Authorization.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_circuit_authorization" 
}

inputs = {
   name = "name of express_route_circuit_authorization" 
   resource_group_name = "${resource_group}" 
   express_route_circuit_name = "express_route_circuit_name of express_route_circuit_authorization" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **var.express_route_circuit_name** | string | True | The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ExpressRoute Circuit Authorization. | 
| **authorization_key** | string | No  | The Authorization Key. | 
| **authorization_use_status** | string | No  | The authorization use status. | 

Additionally, all variables are provided as outputs.
