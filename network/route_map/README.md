# azurerm_route_map

Manages a Route Map.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Route Map. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  -  | The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.rule** | block | False | -  |  -  | A `rule` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **rule** | block  | - | 
| **id** | string  | The ID of the Route Map. | 