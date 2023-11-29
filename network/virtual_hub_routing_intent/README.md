# azurerm_virtual_hub_routing_intent

Manages a Virtual Hub Routing Intent.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.routing_policy** | block | True | One or more `routing_policy` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **routing_policy** | block  | - | 
| **id** | string  | The ID of the Virtual Hub Routing Intent. | 