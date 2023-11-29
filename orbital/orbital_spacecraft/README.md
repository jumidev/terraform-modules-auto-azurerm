# azurerm_orbital_spacecraft

Manages a Spacecraft.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Spacecraft. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The location where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **var.norad_id** | string | True | -  |  -  | NORAD ID of the Spacecraft. | 
| **var.links** | block | True | -  |  -  | A `links` block. Changing this forces a new resource to be created. | 
| **var.two_line_elements** | list | True | -  |  -  | A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created. | 
| **var.title_line** | string | True | -  |  -  | Title of the two line elements (TLE). | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **norad_id** | string  | - | 
| **links** | block  | - | 
| **two_line_elements** | list  | - | 
| **title_line** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Spacecraft. | 