# azurerm_network_profile

Manages a Network Profile.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Network Profile. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **container_network_interface** | block | True | -  |  -  | A `container_network_interface` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

