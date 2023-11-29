# azurerm_orbital_spacecraft

Manages a Spacecraft.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Spacecraft. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location where the Spacecraft exists. Changing this forces a new resource to be created. | 
| **norad_id** | string | True | -  |  -  | NORAD ID of the Spacecraft. | 
| **links** | block | True | -  |  -  | A `links` block. Changing this forces a new resource to be created. | 
| **two_line_elements** | list | True | -  |  -  | A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created. | 
| **title_line** | string | True | -  |  -  | Title of the two line elements (TLE). | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

