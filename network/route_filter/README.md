# azurerm_route_filter

Manages a Route Filter.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **var.name** | string | True | The Name which should be used for this Route Filter. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **var.rule** | block | False | A `rule` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Route Filter. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **rule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Route Filter. | 