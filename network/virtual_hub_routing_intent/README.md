# azurerm_virtual_hub_routing_intent

Manages a Virtual Hub Routing Intent.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | True | -  |  -  | The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **routing_policy** | block | True | -  |  -  | One or more `routing_policy` blocks. | 

