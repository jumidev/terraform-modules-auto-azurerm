# azurerm_route_filter

Manages a Route Filter.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **name** | string | True | -  |  -  | The Name which should be used for this Route Filter. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **rule** | block | False | -  |  -  | A `rule` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Route Filter. | 

