# azurerm_route_map

Manages a Route Map.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Route Map. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | True | -  |  -  | The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **rule** | block | False | -  |  -  | A `rule` block. | 

